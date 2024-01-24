
These are the dimensions and standard values for describing an adunit in-part or as a whole. 
These terms are used in advert setup and in reporting.
See also the page on [Good-Loop Terminology](https://doc.good-loop.com/Good-Loop-terminology.md).

1. **delivery** mechanism i.e. how does the adunit get onto the page?   
- Values:
    - <code>vpaid</code>
    - <code>ourpage</code> (as.good-loop.com or CPC wrapper)
    - <code>app</code> (e.g. SnapChat)
    - <code>direct</code>
    - <code>iframe</code> (a non-expanding banner, e.g. an mpu2)
    - <code>safeframe</code>

2. **size**:   
 - Standard banner sizes:
    - <code>mpu</code> (300x250)
    - Double MPU <code>mpu2</code> (300x600)
    - <code>leaderboard</code> (728x90)
    - <code>billboard</code> (970x250)
    - <code>vbnr</code>
    - <code>stickyfooter</code>
 - Standard vpaid sizes:
    - <code>portrait</code>
    - <code>square</code>
    - <code>landscape</code>
 - <code>fullscreen</code> (e.g. ourpage, or snapchat after a swipe-up)
 - <code>responsive</code> (size unknown, take the full frame - differs from fullscreen in that it will only be part of the screen)

Size is often called "format" in the industry, but that's ambiguous -- so we use <code>size</code> instead.
It can be unset at the buying and request stage, with the adunit working it out dynamically.

3. **play** behaviour:
- <code>onload</code>
- <code>onvisible</code>
- <code>onclick</code>
- <code>clickthrough</code> (i.e. no video play) 
- <code>onexpand</code> (i.e. safeframe)
- <code>none</code> (i.e. the CPC banner which has no video)

4. **after**:
- <code>vanish</code> (e.g. pre-roll - the advert will cleanup and vanish once its finished) 
- <code>persist</code> (e.g. in-read, the thank-you page will linger)

5. **videoaspect**:
- <code>16:9</code> (landscape)
- <code>1:1</code> (square)
- <code>9:16</code> (portrait)
- plus custom ratios, as "a:b"    
We record these as keyword strings. The unit can turn them into numbers.

6. **style**  (99.9% applies to banners only):
- <code>default</code>
- <code>countdown</code>
- etc etc

How does it look & feel? Can also cover e.g. “banner shows a video thumbnail”, “use logo A/B”   
We expect to define explore and discard lots of these.   
We also have the custom css. We'd define a style type if 
(a) css isn't enough and it has to hook into custom code, or (b) we want to report on A/B variants.

7. **cta**:
- <code>none</code>
- <code>track</code>
- <code>email</code>
- <code>social</code>
- <code>adlink</code>
- <code>appinstall</code>
- <code>custom</code>
   
We can't enumerate all of these, but it's useful to list common ones for reporting. Let's also have a custom html field, separate from this, which can define actual html (so a cta can have e.g. custom wording).

Using this...

A standard pre-roll would be: 
</code>delivery:vpaid size:landscape play:onvisible videoaspect:16:9 style:default cta:none after:vanish</code>

A blogger direct tag might be:
</code>delivery:direct size:mpu play:onexpand style:default after:persist</code>

The CPC banner has the pre-click banner -- which might be an image in AdSense, or e.g.

</code>delivery:banner size:mpu play:none cta:adlink</code>

The CPC banner post-click has 

</code>delivery:ourpage size:fullscreen play:none cta:adlink</code> -- where play:none is the key difference from the as.good-loop.com adplayer.

SnapChat post-swipe-up is

</code>delivery:app size:fullscreen play:onload style:snap</code>

## Canonical Terminology for Logging Good-Loop Events

These are the events logged by adserving, which you can access in the portal dashboard.

 - <code>trk.pxl</code> | A user has visited a site on which the G-L pixel lives, and now the pixel allows G-L to track if that user interacts with the ad-unit, re-visits the site(s), and/or visits the Advertiser's click-through page. NB: logged in the dataspace <code>trk</code>, not the usual <code>gl</code> one.
 - <code>req</code> | The adunit is requested by a call to unit.js. This can be confirmed against our nginx logs. Unlike other events, this event is recorded by the adserver backend calling lg.good-loop.com (so IP and user-agent may be different).
 - <code>reqfail</code> | A request was made to the server, but failed at that stage.
 - <code>error</code> | An error occurred when viewing the ad. Dev-Ops can see an example in the json for details. Some errors are handled gracefully.
 - <code>warning</code> | Like error, but less bad.
 - <code>render</code> | The advert has displayed itself within the page. This does not mean it is viewable.
 - <code>visible</code> | The adunit is viewable (it's 50% on screen for at least a second). Because of the 1 second delay, it is possible for ads to complete via click-through before this event fires.
 - <code>mouseover</code> | The user has moved their mouse over the ad -- typically a hover indicating attention.
 - <code>clicktolandingpage</code> | Only used on the click-through-to-our-landing-page-video-player variant. Click through to our video-player landing-page.
 - <code>req2</code> | With click-through-to-video-landing-page, this is the second request to the server (the one for our video-landing-page).
 - <code>reqfail2</code> | The req2 request failed.
 - <code>render2</code> | The render for our video-landing-page. Typically the sequence here is: req -> render -> clicktolandingpage -> req2 -> render2.
 - <code>visible2</code> | Visible for our video-landing-page.
 - <code>open</code> | The video play is opened (e.g. the user clicked to open the lightbox), and hopefully the ad should start playing.
 An example sequence of events might be: open -> autoplayfail -> clicktoplay -> startvideo.
 - <code>autoplayfail</code> | ...We tried to auto-play the video. It didn't play.
 - <code>clicktoplay</code> | The user clicked on a manual play button (e.g. after an autoplayfail).
 - <code>autoplay</code> | Auto-play worked :)
 - <code>startvideo</code> | The video starts playing.
 - <code>tryexpand</code> | A SafeFrame wrapped adunit tries to expand to show the lightbox.
 - <code>sfexpanded</code> | A SafeFrame wrapped adunit successfully expanded :) Failures are logged under <code>error</code>.
 - <code>pick</code> | The user has picked a charity.		
 - **`minview`** | The user has watched long enough to count as a completed view - the advertiser is charged and a donation will be made to charity.
 - <code>donation</code> | A donation event. Called when the user has picked a charity provided the video view is complete (i.e. after 14 seconds), or the user clicks-through to the advertiser.
 - <code>click</code> | A click through to the advertiser. See logClick in the unit code.
 - <code>clickother</code> | A click through but not too the advertiser (e.g. to the find-out-more link).
 - <code>endvideo</code> | Hurrah: the video played to the end.
 - <code>close</code> | The lightbox was closed OR the browser page/tab was closed.
 - <code>install</code> | To be logged (by the advertiser) if the user installs an app from the advert.
 - <code>consent-requested</code> | The user was asked about profile tracking.
 - <code>consent-yes</code> | The user said yes to profile tracking.
 - <code>consent-no</code>  | The user said no to profile tracking.
 - <code>spend</code> | A budget spend event (e.g. a minview or click). The count of these is the number of events, and NOT the £ amount. NB: Spend events are now logged to both the DataLog "money" and "gl" dataspaces.
 - <code>average_view_seconds</code> | Use with caution!
 - <code>adok</code> | There is no adblocker present.
 - <code>adblock</code> | There is an adblocker present (or rather: an ad-like request failed; this can also be caused by a bad internet connection).
 - `spendadjust` | Created by BatchAllocateOrphanSpendEvents to fill in donation info for ad views that reached a donation but didn't allocate it to a charity.
 - `campaignend` | TODO The campaign has ended - what was the total donation?

NB: the event names are designed to be good for grep and ES. Lower case, no spacing or punctuation.
