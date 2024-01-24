
# Flow for a Typical Successful Direct-Tag or SafeFrame Advert

All activity is by the AdUnit (aka unit.js), unless otherwise stated.

See notes in TrafficReport.jsx on event types


1. WebPage -> AdServer: requests unit.js or unit-debug.js (static file)
    * In the SafeFrame context, WebPage is an iframe created by Google's gpt.js to sandbox our unit
2. WebPage: executes unit.js, creating src-less iframe and instantiating a local Redux store
5. UnitJS -> AdServer: requests ads.js (dummy file to trigger adblock if present)
6. `adok` or `adfail` depending on success of loading ads.js
7. UnitJS -> AdServer: requests unit.json
8. `req` (from AdServer) ... `reqfail` if there is an error.
9. AdServer -> SQL: new Bid
10. AdServer -> UnitJS (client): **unit.json sent**
11. `render`
12. `visible`
13. if (click-to-open) then...
    1. `mouseover` (not on touch devices), then user clicks/taps banner
        * (if serving into SafeFrame or other frame container) UnitJS requests expansion from frame API
        * UnitJS receives confirmation that frame has expanded
    2. `open`
14. `startvideo`
15. `elapse` (sent every 5 seconds whilst the video is playing)
16. if (15 seconds watched) then...
17. `minview`
18. DataLog -> AdServer: "minview" (via CallbackManager.java -> LgWebhookServlet.java)
19. AdServer -> SQL: set Bid.due=true
20. AdServer -> SQL: reduce Budget
21. AdServer: if (Budget=0) then switch off Advert.
22. AdServer -> DataLog: `spend`
23. `pick` with charity-ID cid (NB: on iPhone, pick happens before the video)
24. `donation` (once `minview` and `pick` both sent) with charity-ID cid and price.
25. `endvideo`
26. `ctaoffer*` (`*` may be `email`, `appinstall`, `connect`, `consent`, `coupon`, `like`, `link`, `share`)
27. `cta*-yes` or `cta*-no` If the User engages with `email`, `connect` or `consent` CTA.
28. `click` If the User clicks through to the advertiser landing page.
29. `clickother` If the User clicks through to find-out-more.
30. `close` Can be close lightbox, or close page/tab.

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
