
# Architecture Overview

See also the flow-X files, which describe how particular interactions like serving-an-ad are handled.

## Micro Services

Good-Loop is split up into several modular pieces following a
microservices architecture. 

A doc for external people: https://docs.google.com/document/d/11ZZnTonhKPyK1Tqvae1fYqDY-GvERSYOygCsnhwWF1M/edit#heading=h.xpwnope5859v

Our typical micro-service has an ES data layer, a Java backend, a json-over-http API,
and a react front-end.

The micro-services are:

### Portal (in adserver repo) portal.good-loop.com

For managing campaigns.

### AdServer (in adserver repo) as.good-loop.com

Delivers adverts!

### Test Pages (in adserver repo) test.good-loop.com

Just a collection of html pages, for testing ad variants.

### DataLog (in open-code/Good-Loop.datalog) lg.good-loop.com

### YouAgain Server (in code) youagain.good-loop.com

Login, auth, sharing / access-control.

### Profiler (in code) profiler.good-loop.com

Used by My-Loop.

### My-Loop: front-end web-app only

The backend is provided by the other micro-services here.

### Calstat calstat.Good-Loop.com

For ad-hoc services: calstat (calendar counter), and tasks (used by portal)
Maybe we should rename it to labs?


### Batch Processes (in adserver repo)

These are for doing data clean-up operations.

com.goodloop.process.BatchAllocateOrphanSpendEvents


## Software Stack

http://winterstein.github.io/StackDiagramEditor/?#TdZiZS5ChIS3b0Z78Q6T

Ad Server
[video / VAST / VPAID advert media]
[Good-Loop AdUnit .js]
[Publisher website (optionally with an SSP ad delivery system)]
[Browser i:chrome i:ie i:firefox i:safari]
[http: unit.js][][http: logging API]
[AdServer][][Logger]

App Stack - Used by the Advertiser, Publisher, and User Portals
[App code]
[i:react React]
[Browser]
[http: RESTful APIs]
[Services]

Service Stack - Used by the AdServer, Logger, and Profiler
[http: service API]
[i:nginx Nginx]
[Business logic]
[i:java Java]
[ElasticSearch][i:postgres PostgreSQL][http: micro-services]
[OS:Linux i:linux i:ubuntu :2]


