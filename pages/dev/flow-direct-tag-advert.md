
# Flow for a Typical Successful Direct-Tag Advert

TODO @Roscoe add flow for vast/vpaid, snap, ourpage, safeframe/iframe

All activity is by the AdUnit (aka unit.js), unless otherwise stated.

See notes in TrafficReport.jsx on event types


1. WebPage -> AdServer: requests unit.js or unit-debug.js (static file)
2. WebPage: executes unit.js
3. UnitJS (host) -> AdServer: Creates iframe with src iframe.html (static file)
4. IFrame -> AdServer: requests unit.js or unit-debug.js (may be different from file used in (1) if gl.debug parameter is set)
5. UnitJS (client) -> AdServer: requests ads.js (dummy file to trigger adblock if present)
6. `adok` or `adfail` depending on success of loading ads.js
7. UnitJS (client) -> AdServer: requests unit.json
8. `req` (from AdServer) ... `reqfail` if there is an error.
9. AdServer -> SQL: new Bid
10. AdServer -> UnitJS (client): **unit.json sent**
11. `render`
12. `visible`
13. if (click-to-open) then...
14. `mouseover` (not on touch devices)
15. `open`
16. `elapse` (sent every 5 seconds whilst the video is playing)
17. if (15 seconds watched) then...
18. `minview`
19. DataLog -> AdServer: "minview" (via CallbackManager.java -> LgWebhookServlet.java)
20. AdServer -> SQL: set Bid.due=true
21. AdServer -> SQL: reduce Budget
22. AdServer: if (Budget=0) then switch off Advert.
23. AdServer -> DataLog: `spend`
24. `pick` with charity-ID cid (NB: on iPhone, pick happens before the video)
25. `donation` (once `minview` and `pick` both sent) with charity-ID cid and price.
26. `endvideo`
27. `ctaoffer*` (`*` may be `email`, `appinstall`, `connect`, `consent`, `coupon`, `like`, `link`, `share`)
28. `cta*-yes` or `cta*-no` If the User engages with `email`, `connect` or `consent` CTA.
29. `click` If the User clicks through to the advertiser landing page.
30. `clickother` If the User clicks through to find-out-more.
31. `close` Can be close lightbox, or close page/tab.

Notes

 - Either `click` or `minview` will trigger AdServer to mark the Bid as due. If both happen, it will only charge the advertiser's Budget once per Bid.

 - Why not merge donation / spend?
Becuase we get minview => spend without a charity pick (so no donation event).
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
