
# Flow for a Typical Successful VAST/VPAID Advert

All activity is by the AdUnit (aka unit.js), unless otherwise stated.

See notes in TrafficReport.jsx on event types


1. WebPage -> AdServer: requests vast.xml from VastServlet
2. AdServer -> SQL: new Bid, bid ID included in vast.xml
3. `req` (from VastServlet) ... `reqfail` if there is an error.
4. WebPage: Parses vast.xml
5. WebPage -> AdServer: Requests unit.js or unit-debug.js
6. UnitJS inspects page for insertion points, sets up Redux stores for each, and begins rendering adverts.
7. UnitJS -> AdServer: requests ads.js (dummy file to trigger adblock if present)
8. `adok` or `adfail` depending on success of loading ads.js
9. UnitJS -> AdServer: requests unit.json
10. `req2` (from AdServer) ... `reqfail2` if there is an error.
10. AdServer -> UnitJS (client): **unit.json sent**
11. `render`
12. `startvideo`
13. `elapse` (sent every 5 seconds whilst the video is playing)
14. if (15 seconds or configured minview watched) then...
15. `minview`
16. DataLog -> AdServer: "minview" (via CallbackManager.java -> LgWebhookServlet.java)
17. AdServer -> SQL: set Bid.due=true
18. AdServer -> SQL: reduce Budget
19. AdServer: if (Budget=0) then switch off Advert.
20. AdServer -> DataLog: `spend`
21. `pick` with charity-ID cid (NB: on iPhones running iOS < 10, pick happens before the video)
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
