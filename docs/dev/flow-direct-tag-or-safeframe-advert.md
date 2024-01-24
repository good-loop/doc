# Flow for a Typical Successful Direct-Tag or SafeFrame Advert

All activity is by the AdUnit (aka unit.js), unless otherwise stated.

See notes in TrafficReport.jsx on event types

1. WebPage -> AdServer: requests unit.js or unit-debug.js (static file)
   - In the SafeFrame context, WebPage is an iframe created by Google's gpt.js to sandbox our unit
2. WebPage: executes unit.js, creating src-less iframe and instantiating a local Redux store
3. UnitJS -> AdServer: requests ads.js (dummy file to trigger adblock if present)
4. `adok` or `adfail` depending on success of loading ads.js
5. UnitJS -> AdServer: requests unit.json
6. `req` (from AdServer) ... `reqfail` if there is an error.
7. AdServer -> SQL: new Bid
8. AdServer -> UnitJS (client): **unit.json sent**
9. `render`
10. `visible`
11. if (click-to-open) then...
    1. `mouseover` (not on touch devices), then user clicks/taps banner
       - (if serving into SafeFrame or other frame container) UnitJS requests expansion from frame API
       - UnitJS receives confirmation that frame has expanded
    2. `open`
12. `startvideo`
13. `elapse` (sent every 5 seconds whilst the video is playing)
14. if (15 seconds watched) then...
15. `minview`
16. DataLog -> AdServer: "minview" (via CallbackManager.java -> LgWebhookServlet.java)
17. AdServer -> SQL: set Bid.due=true
18. AdServer -> SQL: reduce Budget
19. AdServer: if (Budget=0) then switch off Advert.
20. AdServer -> DataLog: `spend`
21. `pick` with charity-ID cid (NB: on iPhone, pick happens before the video)
22. `donation` (once `minview` and `pick` both sent) with charity-ID cid and price.
23. `endvideo`
24. `ctaoffer*` (`*` may be `email`, `appinstall`, `connect`, `consent`, `coupon`, `like`, `link`, `share`)
25. `cta*-yes` or `cta*-no` If the User engages with `email`, `connect` or `consent` CTA.
26. `click` If the User clicks through to the advertiser landing page.
27. `clickother` If the User clicks through to find-out-more.
28. `close` Can be close lightbox, or close page/tab.

Notes

- Either `click` or `minview` will trigger AdServer to mark the Bid as due. If both happen, it will only charge the advertiser's Budget once per Bid.

- Why not merge donation / spend?
  Because we get minview => spend without a charity pick (so no donation event).
  And we get unlinked spend vs donation from e.g. Loop.Me

## DataLog event columns

- count: This should always be 1!
- pub: Publisher ID
- evt: An array of events for this bid.
  All the events for one Bid should be grouped into one DataLog event within ES.
- price: The Bid price in £s
- cid: Charity ID
- bid: Bid ID
- budget: the budget ID
- dntn: The donation amount in £s (usually 50% of price)
- dt: Elapsed time in milliseconds

These are not always present.
