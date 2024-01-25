title: Publishers: How to install Good-Loop on your site

## Installing Good-Loop is quick and safe. You have to put some tags into your pages. You can put these directly into the pages. Or if you use a tag manager (e.g. Google Tag Manager), then you can install Good.Loop via this.

**If you use DoubleClick for Publishers (DfP), please see [this guide](<./Use-with-DoubleClick-for-Publishers-(DfP).md>)**.

Please contact us if you have any issues.

<hr>

Put this snippet into your page wherever you want an advert:

```html
<div class="goodloopad" style="width: 100%;height: 100vh;"></div>
<script
  src="//as.good-loop.com/unit.js?gl.size=landscape&gl.vert=XXXXXX"
  async
></script>
```

Replace the XXXXXX with the adID of the ad that you are attempting to see on your site.

Once that is done, contact us to setup your financial arrangements.

That's it!

Our ad-unit does not slow down your page -- it uses _asynchronous loading_, so your page load is not affected.

You can put multiple advert tags onto a page.

**That is all that's needed for basic setup! The rest of this page lists advanced options.**

<hr>

## Options

### The Format / Size

Good-Loop provides several formats. By default, the adunit will automatically pick the best size for the space. You don't have to set anything.

We tend to break down the many types of Good-Loop formats in the following categories:

- Landscape / Portrait
- VPAID/VAST or Regular Video

Should you wish to use a Good-Loop ad within your drop-in VAST player, simply contact your Good-Loop representative and they will be able to generate the correct drop-in code for you.

## Blocking Ads on a Page

How do you not show an ad? Easy: You decide where to place the <code>&lt;div class='good-loop-ad'&gt;&lt;/div&gt;</code> tags -- no tag, no ad.

However that can be cumbersome if you want an ad on most pages, but with a few exclusions. For this case, we also have an "advert blacklist" tag. If you place this tag on a page, it will disable Good.Loop adverts on that page -- they won't show at all.

<code>&lt;div class='good-loop-adblock'>&lt;/div&gt;</code>
