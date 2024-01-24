
## Using Good-Loop with DoubleClick for Publishers (DfP)

Good-Loop works with Doubleclick for Publishers (DfP). Although we do recommend you use Good-Loop directly instead -- installing the tag into your pages is easy (see [this guide](./Publishers-How-to-install-Good-Loop-on-your-site.md)) and has advantages: DfP gets ad-blocked, plus a direct install gives more reliable lightboxes, and you can set Good-Loop to backfill with DfP. However we understand if you want to use DfP, and here is how to install Good-Loop using DfP.

This page is for people who are already familiar with DfP.
If you're new to DfP and want help setting up DfP ad-slots and line-items -- see our [Beginners DfP Tutorial](./Beginners-DfP-Tutorial.md).

When you make a new Creative, choose <code>Third Party</code>

We recommend naming Creatives according to a pattern, such as "GoodLoop-year-month-size_of_ad" -- but that is up to you.

Then in the Code Snippet field, paste in the following code:

```html
<div class='goodloopad'></div>
<script src='//as.good-loop.com/unit.js?site=%%SITE%%&gl_url=%%PATTERN:url%%&width=%%WIDTH%%&height=%%HEIGHT%%&adunit=%%ADUNIT%%&cb=%%CACHEBUSTER%%'></script>
```

Make sure the "serve using SafeFrame" box *is* ticked. We use SafeFrame to create a lightbox for showing the video.

You can now use the creative in adverts.

Note that edits in DfP are not instant: It can take upto 10 minutes for adverts (or changes to an advert) to go live.

You won't see any adverts until your account is activated! Once you have it installed, let us know and we will activate your account.

## Warning

There are a couple of gotchas when using DfP.

If you use an adblocker, turn it off for your domain.

The **DfP Preview** feature does not work. This is due to a bug in DfP: the preview doesn't properly support the lightbox features which the real iframe does. This makes preview confusingly useless for lightbox ads like Good-Loop. So avoid Creative -> Preview.

CSS issues: It's easy to break a SafeFrame's ability to expand to full-page, if the host page has a css rule that limits iframe width. For example, a css rule like this would block the advert from expanding when clicked:

```html
iframe {
	max-width: 100%;
}
```

The effect of this is, when the user clicks to play the video, they only see a small video.
The solution is to modify the CSS. This can be done safely by using a very specific rule like this:

```html
iframe[id^='google_ads_iframe_'] { /* matches any iframe whose id begins with "google_ads_iframe_" */
	max-width: none;
}
```

Any issues? Please contact us.

## Benefits of a direct install over DfP

Although Good-Loop works with DfP, we still recommend you install the Good-Loop tag directly in your page instead.   
Why?   

**Doubleclick is blocked by ad-blockers, but Good-Loop is not**. This is because we only serve opt-in adverts. 
If you serve Good-Loop via DfP, you lose this benefit, as DfP gets blocked. If you install Good-Loop directly it will display even for users with an ad-blocker.

You can setup a backfill in Good-Loop, so that if we don't have a high enough value advert, it passes on to DfP (or another ad server). You can also set Good-Loop to only display when there is an adblocker present (i.e. when you would otherwise serve no ad at all).

Also, with a direct install there is less room for CSS issues.