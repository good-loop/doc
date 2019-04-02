
# Flow for a Typical Successful Our-Page Advert

All activity is by the AdUnit (aka unit.js), unless otherwise stated.

See notes in TrafficReport.jsx on event types

1. User arrives by clicking on a banner advert - may be our ad-unit operating in clickthrough mode.
2. OurPage -> AdServer: requests unit.js or unit-debug.js (static file)
3. OurPage: executes unit.js, rendering directly into the root DOM and instantiating a local Redux store
4. UnitJS -> AdServer: requests ads.js (dummy file to trigger adblock if present)
5. `adok` or `adfail` depending on success of loading ads.js
6. UnitJS -> AdServer: requests unit.json
7. `req` (from AdServer) ... `reqfail` if there is an error.
    * If we've come from a click on our own ad-unit, this will be `req2`, as it'll be using a pre-existing bid
8. (If not coming from click on a Good-Loop unit) AdServer -> SQL: new Bid
9. AdServer -> UnitJS (client): **unit.json sent**
10. `render`
11. `visible`
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
28. `close` when the user closes the page/tab. (NB certain browsers don't reliably fire events on tab-close)
