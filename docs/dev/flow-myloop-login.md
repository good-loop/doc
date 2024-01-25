# Flow for a Typical Successful my.good-loop.com (My-Loop) Login

## Login e.g. with email

1. MyLoop (via youagain.js) -> YouAgain Server: email and password
2. YouAgain Server -> MyLoop: user json. This contains user.aliases which is a summary of all the jwt tokens the browser is currently carrying.
3. YouAgain Server (ProfileLinker.java) -> Profiler LinkServlet.java: jwt tokens, sent as post parameters
4. Profiler saves links.

Note: The browser does not leave the MyLoop page.

## Profile linking

- You Again does not hold linking info! YouAgain's aliases field is made from jwt tokens supplied by the browser.
- Profiler also holds linking info in Person.links. These links are for profile inference - they do not allow impersonation.
- Impersonation (e.g. login by email/password, then post to Twitter) is done by the browser holding both jwt tokens.

## Login with Twitter

Similar to email, but with some extra steps for the oauth dance.

1. MyLoop (via youagain.js): send the browser to YouAgain Server saying "I want to login by Twitter"
2. YouAgain Server -> redirect the browser to Twitter
3. Twitter <-> user: authorisation
4. Twitter -> redirect the browser to YouAgain Server
5. YouAgain Server: store Twitter oauth, create a jwt token, and redirect the browser to MyLoop.
   A ya_c parameter is placed on the url, so that the YouAgain Client code can get it.

Currently: Twitter data is NOT auto-analysed for e.g. gender. It is analysed when a separate call is made to /analyzedata

The browser does leave the MyLoop page, and returns to it when oauth has finished.

## Login with Facebook

??done by their js sdk, and the web-app reports to the YA server

## Config Properties

YouAgainConfig linkEndpoint
