
# Flow for a Typical Successful In-App Advert

TODO @Roscoe add flow for ourpage, safeframe/iframe

All activity is by the AdUnit (aka unit.js), unless otherwise stated.

See notes in TrafficReport.jsx on event types

1. `render` impression log call made by app when it presents initial video/banner
2. User swipes up / clicks to open view on `apps.good-loop.com/[location-of-campaign-webview-page]`
3. WebView -> AdServer: requests unit.js or unit-debug.js (static file)
4. WebView: executes unit.js
5. UnitJS -> AdServer: requests ads.js (dummy file to trigger adblock if present)
6. `adok` or `adfail` depending on success of loading ads.js
7. UnitJS -> AdServer: requests unit.json
8. `req2` (from AdServer) ... `reqfail` if there is an error.
9. AdServer -> SQL: new Bid
10. AdServer -> UnitJS (client): **unit.json sent**
11. `render2`
12. `visible`
13. if (click-to-open) then...
14. `mouseover` (not on touch devices)
15. `open`
16. `startvideo`
17. `elapse` (sent every 5 seconds whilst the video is playing)
18. if (15 seconds watched) then...
19. `minview`
20. DataLog -> AdServer: "minview" (via CallbackManager.java -> LgWebhookServlet.java)
21. AdServer -> SQL: set Bid.due=true
22. AdServer -> SQL: reduce Budget
23. AdServer: if (Budget=0) then switch off Advert.
24. AdServer -> DataLog: `spend`
25. `pick` with charity-ID cid (NB: on iPhone, pick happens before the video)
26. `donation` (once `minview` and `pick` both sent) with charity-ID cid and price.
27. `endvideo`
28. `ctaoffer*` (`*` may be `email`, `appinstall`, `connect`, `consent`, `coupon`, `like`, `link`, `share`)
29. `cta*-yes` or `cta*-no` If the User engages with `email`, `connect` or `consent` CTA.
30. `click` If the User clicks through to the advertiser landing page.
31. `clickother` If the User clicks through to find-out-more.
