# Advert Products

_See also the [AdTech Jargon Glossary](AdTech Jargon Glossary)_

We mostly deliver standard advert formats, like pre-roll vpaid. However we also have a couple of
Good-Loop specific products.

 * Video Player Page (the `player`). A destination page that shows a video ad. https://demo.good-loop.com

 * Campaign Page

 * Do-Good Wrapper (the `wrapper`). A banner advert, which links through to the brand's landing page
  -- but with a special Good-Loop wrapper, that adds a donate-to-charity widget to the top of the page.
  It's a banner ad - but one that does good and leaves viewers feeling good. Sold on a CPC basis.

* `Splash Video`: The looped ~5 second 9x16 video that is seen on a Snapchat advert (or in your feed on Facebook, or...).
We make this (adding the charity logo overlay) - but the core of it is a short video provided by the advertiser.
	* `Splash Banner`: The same but a static image instead of a short video.

* `Social Post-Engagement-Page` : A reference to 'that thing that you see after swiping up on an Instagram advert'.
    - Normally we'll set a page we host ourselves - which just loads a screen-filling adunit - as the campaign's landing page in the Instagram/Facebook/etc ad portal.
    - [Here's an example](https://testsocial.good-loop.com/generic/index.html?gl.vert=test_wide_multiple) of such a page. This will be optimised for portrait viewing and should be opened on mobile, or in mobile-simulation mode on a desktop browser.
    - The Good-Loop adunit can currently fill most needs on its own, without needing to be embedded in a custom page.
    - - The video can be removed by adding param `gl.novideo=true` to the landing page URL.
    - - If the ordering of elements is wrong, it can be changed using the dynamic layout engine - ask Dan A. or RM for assistance setting this up.
    - - Everything else - colours, fonts, sizing etc - can be accomplished with CSS.


## Good-Loop Advert Taxonomy

These are the dimensions and standard values for describing an adunit in-part or as a whole. 
These terms are used in advert setup and in reporting.
See also the page on [Good-Loop Terminology](https://doc.good-loop.com/Good-Loop-terminology.html).

1. **delivery** mechanism i.e. how does the adunit get onto the page?   
- Values:
    - `vpaid`
    - `ourpage` (as.good-loop.com or CPC wrapper)
    - `app` (e.g. SnapChat)
    - `direct`
    - `iframe` (a non-expanding banner, e.g. an mpu2)
    - `safeframe`

2. **size**:   
 - Standard banner sizes:
    - `mpu` (300x250)
    - Double MPU `mpu2` (300x600)
    - `leaderboard` (728x90)
    - `billboard` (970x250)
    - `vbnr`
    - `stickyfooter`
 - Standard vpaid sizes:
    - `portrait`
    - `square`
    - `landscape`
 - `fullscreen` (e.g. ourpage, or snapchat after a swipe-up)
 - `responsive` (size unknown, take the full frame - differs from fullscreen in that it will only be part of the screen)

Size is often called "format" in the industry, but that's ambiguous -- so we use `size` instead.
It can be unset at the buying and request stage, with the adunit working it out dynamically.

3. **play** behaviour:
- `onload`
- `onvisible`
- `onclick`
- `clickthrough` (i.e. no video play) 
- `onexpand` (i.e. safeframe)
- `none` (i.e. the CPC banner which has no video)

4. **after**:
- `vanish` (e.g. pre-roll - the advert will cleanup and vanish once its finished) 
- `persist` (e.g. in-read, the thank-you page will linger)

5. **videoaspect**:
- `16:9` (landscape)
- `1:1` (square)
- `9:16` (portrait)
- plus custom ratios, as "a:b"    
We record these as keyword strings. The unit can turn them into numbers.

6. **style**  (99.9% applies to banners only):
- `default`
- `countdown`
- etc etc

How does it look & feel? Can also cover e.g. “banner shows a video thumbnail”, “use logo A/B”   
We expect to define explore and discard lots of these.   
We also have the custom css. We’d define a style type if 
(a) css isn’t enough and it has to hook into custom code, or (b) we want to report on A/B variants.

7. **cta**:
- `none`
- `track`
- `email`
- `social`
- `adlink`
- `appinstall`
- `custom`
   
We can’t enumerate all of these, but it’s useful to list common ones for reporting. Let’s also have a custom html field, separate from this, which can define actual html (so a cta can have e.g. custom wording).

Using this...

A standard pre-roll would be: 
`delivery:vpaid size:landscape play:onvisible videoaspect:16:9 style:default cta:none after:vanish`

A blogger direct tag might be:
`delivery:direct size:mpu play:onexpand style:default after:persist`

The CPC banner has the pre-click banner -- which might be an image in AdSense, or e.g.

`delivery:banner size:mpu play:none cta:adlink`

The CPC banner post-click has 

`delivery:ourpage size:fullscreen play:none cta:adlink` -- where play:none is the key difference from the as.good-loop.com adplayer.

SnapChat post-swipe-up is

`delivery:app size:fullscreen play:onload style:snap`

## Canonical Terminology for Logging Good-Loop Events

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

## Good-Loop Process Terminology

These are pretty clear when expanded - but we also use the acronyms.

- `Response-to-Brief (RTB)` The proposal we send a client after they send us a brief. Note: elsewhere in adtech RTB means realtime bidding.
- `Post Campaign Analysis (PCA)` The report we send a client after the campaign.
