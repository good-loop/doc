
# Flow for a Typical Successful Direct-Tag Advert

All activity is by the AdUnit (aka unit.js), unless otherwise stated.

See notes in TrafficReport.jsx on event types


1. WebPage -> AdServer: requests unit.js
2. `req` (from AdServer) ... `reqfail` if there is an error.
3. AdServer -> SQL: new Bid
4. AdServer -> WebPage: unit.js sent
5. `render`
6. `visible`
7. if (click-to-open) then...
8. `open`
9. `elapse` (sent every 5 seconds whilst the video is playing)
10. if (15 seconds watched) then...
11. `minview`
12. DataLog -> AdServer: "minview" (via CallbackManager.java -> LgWebhookServlet.java)
13. AdServer -> SQL: set Bid.due=true
14. AdServer -> SQL: reduce Budget
15. AdServer: if (Budget=0) then switch off Advert.
16. AdServer -> DataLog: `spend`
17. `pick` with charity-ID cid (NB: on iPhone, pick happens before the video)
18. `donation` with charity-ID cid and price.
19. `endvideo`
20. `click` If the User clicks through to the advertiser landing page.
21. `clickother` If the User clicks through to find-out-more.
22. `close` Can be close lightbox, or close page/tab.

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
