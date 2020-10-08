# Good-Loop Advert Taxonomy

*Updated October 2020*

These are the dimensions and standard values for describing an adunit. 
These terms are used in advert setup and in reporting.
See also the page on Good-Loop Terminology.

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

The CPC banner has the pre-click banner -- which might be an image in AdSense, or e.g. `delivery:banner size:mpu play:none cta:adlink`
The CPC banner post-click has `delivery:ourpage size:fullscreen play:none cta:adlink` -- where play:none is the key difference from the as.good-loop.com adplayer.

Snap post-swipe-up is `delivery:app size:fullscreen play:onload style:snap`
