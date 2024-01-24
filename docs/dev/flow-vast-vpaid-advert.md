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
11. AdServer -> UnitJS (client): **unit.json sent**
12. `render`
13. `startvideo`
14. `elapse` (sent every 5 seconds whilst the video is playing)
15. if (15 seconds or configured minview watched) then...
16. `minview`
17. DataLog -> AdServer: "minview" (via CallbackManager.java -> LgWebhookServlet.java)
18. AdServer -> SQL: set Bid.due=true
19. AdServer -> SQL: reduce Budget
20. AdServer: if (Budget=0) then switch off Advert.
21. AdServer -> DataLog: `spend` with properties `price`,`curr` and audit-trail info (via Budget.java recordSpend())
22. `pick` with charity-ID cid (NB: on iPhones running iOS < 10, pick happens before the video)
23. `donation` (once `minview` and `pick` both sent) with charity-ID cid and price.
24. `endvideo`
25. `ctaoffer*` (`*` may be `email`, `appinstall`, `connect`, `consent`, `coupon`, `like`, `link`, `share`)
26. `cta*-yes` or `cta*-no` If the User engages with `email`, `connect` or `consent` CTA.
27. `click` If the User clicks through to the advertiser landing page.
28. `clickother` If the User clicks through to find-out-more.
29. `close` Can be close lightbox, or close page/tab.

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
