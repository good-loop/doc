
# Flow for a Typical Successful my.good-loop.com (My-Loop) Login

## Login with email

1. MyLoop (via youagain.js) -> YouAgain Server: email and password
2. YouAgain Server -> MyLoop: user json

## Login with Twitter

??oauth dance

## Login with Facebook

??done by their js sdk, and the web-app reports to YA server

## Second Login

If the user already has a login, and is adding a second.
These should get linked together in both YouAgain and in Profiler.

YouAgain Server (ProfileLinker.java) -> Profiler LinkServlet.java: jwt tokens e.g. sent as cookies

