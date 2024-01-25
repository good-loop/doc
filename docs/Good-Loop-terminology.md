# Our Terminology

## Good-Loop Advert Products

_See also the [AdTech Jargon Glossary](AdTech-Jargon-Glossary.md)_

We mostly deliver standard advert formats, like pre-roll vpaid. However we also have a couple of
Good-Loop specific products.

- `Watch-to-Donate (WTD)` Our main video-ads product.

- `Green Media` aka `Green Ad Tag`

- `Tabs-for-Good (T4G)` A browser plugin for the general public.

- Video Player Page (the <code>player</code>). A destination page that shows a video ad. https://demo.good-loop.com

- <code>Impact Hub</code>: a micro-site that shows the impact from an advert(s), and the number of people who saw it. This was previously known as _Campaign Page_ but renamed as it can go beyond single campaigns.

- Do-Good Wrapper (the <code>wrapper</code>). A banner advert, which links through to the brand's landing page
  -- but with a special Good-Loop wrapper, that adds a donate-to-charity widget to the top of the page.
  It's a banner ad - but one that does good and leaves viewers feeling good. Sold on a CPC basis.

- <code>Splash Video</code>: The looped ~5 second 9x16 video that is seen on a Snapchat advert (or in your feed on Facebook, or...).
  We make this (adding the charity logo overlay) - but the core of it is a short video provided by the advertiser. \* <code>Splash Banner</code>: The same but a static image instead of a short video.

- <code>Social Post-Engagement-Page</code> : A reference to 'that thing that you see after swiping up on an Instagram advert'.
  - Normally we'll set a page we host ourselves - which just loads a screen-filling adunit - as the campaign's landing page in the Instagram/Facebook/etc ad portal.
  - [Here's an example](https://testsocial.good-loop.com/generic/index.md?gl.vert=test_wide_multiple) of such a page. This will be optimised for portrait viewing and should be opened on mobile, or in mobile-simulation mode on a desktop browser.
  - The Good-Loop adunit can currently fill most needs on its own, without needing to be embedded in a custom page.
  - The video can be removed by adding param <code>gl.novideo=true</code> to the landing page URL.
  - If the ordering of elements is wrong, it can be changed using the dynamic layout engine - ask Dan A. or RM for assistance setting this up.
  - Everything else - colours, fonts, sizing etc - can be accomplished with CSS.

## Good-Loop Process Terminology

These are pretty clear when expanded - but we also use the acronyms.

- `Response-to-Brief (RTB)` The proposal we send a client after they send us a brief. Note: elsewhere in adtech RTB means realtime bidding.
- `Post Campaign Analysis (PCA)` The report we send a client after the campaign.
- [Good-Loop Advert Taxonomy](./GL-advert-taxonomy.md)
