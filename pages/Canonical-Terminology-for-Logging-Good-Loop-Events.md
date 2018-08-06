# Canonical Terminology for Logging Good-Loop Events:

These are the events logged by adserving, which you can access in the portal dashboard.

 - `trk.pxl` | A user has visited a site on which the G-L pixel lives, and now the pixel allows G-L to track if that user interacts with the ad-unit, re-visits the site(s), and/or visits the Advertiser's click-through page. NB: logged in the dataspace `trk`, not the usual `gl` one.
 - `req` | The adunit is requested by a call to unit.js. This can be confirmed against our nginx logs. Unlike other events, this event is recorded by the adserver backend calling lg.good-loop.com (so IP and user-agent may be different).
 - `reqfail` | A request was made to the server, but failed at that stage.
 - `error` | An error occurred when viewing the ad. Dev-Ops can see an example in the json for details. Some errors are handled gracefully.
 - `warning` | Like error, but less bad.
 - `render` | The advert has displayed itself within the page. This does not mean it is viewable.
 - `visible` | The adunit is viewable (it's 50% on screen for at least a second). Because of the 1 second delay, it is possible for ads to complete via click-through before this event fires.
 - `mouseover` | The user has moved their mouse over the ad -- typically a hover indicating attention.
 - `clicktolandingpage` | Only used on the click-through-to-our-landing-page-video-player variant. Click through to our video-player landing-page.
 - `req2` | With click-through-to-video-landing-page, this is the second request to the server (the one for our video-landing-page).
 - `reqfail2` | The req2 request failed.
 - `render2` | The render for our video-landing-page. Typically the sequence here is: req -> render -> clicktolandingpage -> req2 -> render2.
 - `visible2` | Visible for our video-landing-page.
 - `open` | The video play is opened (e.g. the user clicked to open the lightbox), and hopefully the ad should start playing.
 An example sequence of events might be: open -> autoplayfail -> clicktoplay -> startvideo.
 - `autoplayfail` | ...We tried to auto-play the video. It didn't play.
 - `clicktoplay` | The user clicked on a manual play button (e.g. after an autoplayfail).
 - `autoplay` | Auto-play worked :)
 - `startvideo` | The video starts playing.
 - `tryexpand` | A SafeFrame wrapped adunit tries to expand to show the lightbox.
 - `sfexpanded` | A SafeFrame wrapped adunit successfully expanded :) Failures are logged under `error`.
 - `pick` | The user has picked a charity.		
 - **`minview`** | The user has watched long enough to count as a completed view - the advertiser is charged and a donation will be made to charity.
 - `donation` | A donation event. Called when the user has picked a charity provided the video view is complete (i.e. after 14 seconds), or the user clicks-through to the advertiser.
 - `click` | A click through to the advertiser. See logClick in the unit code.
 - `clickother` | A click through but not too the advertiser (e.g. to the find-out-more link).
 - `endvideo` | Hurrah: the video played to the end.
 - `close` | The lightbox was closed OR the browser page/tab was closed.
 - `install` | To be logged (by the advertiser) if the user installs an app from the advert.
 - `consent-requested` | The user was asked about profile tracking.
 - `consent-yes` | The user said yes to profile tracking.
 - `consent-no`  | The user said no to profile tracking.
 - `spend` | A budget spend event (e.g. a minview or click). The count of these is the number of events, and NOT the £ amount. NB: Spend events are now logged to both the DataLog "money" and "gl" dataspaces.
 - `average_view_seconds` | Use with caution!
 - `adok` | There is no adblocker present.
 - `adblock` | There is an adblocker present (or rather: an ad-like request failed; this can also be caused by a bad internet connection).

NB: the event names are designed to be good for grep and ES. Lower case, no spacing or punctuation.
