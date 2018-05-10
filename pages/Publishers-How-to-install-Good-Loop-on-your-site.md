
Installing Good-Loop is quick and safe. You have to put some tags into your pages. You can put these directly into the pages. Or if you use a tag manager (e.g. Google Tag Manager), then you can install Good.Loop via this. 

**If you use DoubleClick for Publishers (DfP), please see [this guide](Use-with-DoubleClick-for-Publishers-(DfP))**. 

Please contact us if you have any issues.

<hr>

Put this snippet into your page wherever you want an advert:

```
<div class='goodloopad'></div>
<script src='//as.good-loop.com/unit.js' async></script>
```
Test it out, give it a try, see what you can see.

If you notice that the video-playing lightbox seems to be trapped in a tiny confined space, then you'll probably want to switch to a non-expanding Good-Loop ad, by using this snippet:

```
<div class='goodloopad'></div>
<script src='//as.good-loop.com/unit.js?gl.variant=click-through' async></script>
```

Once that is done, contact us to setup which charities you want to support, and your financial arrangements. You can change the charities later.

That's it!

Our ad-unit does not slow down your page -- it uses *asynchronous loading*, so your page load is not affected.

You can put multiple advert tags onto a page.

**That is all that's needed for basic setup! The rest of this page lists advanced options.**

<hr>

## Options

### The Format / Size

Good-Loop provides several formats. By default, the adunit will automatically pick the best size for the space. You don't have to set anything.

If you don't want to use a particular format, let us know and we will switch it off in the Portal. 
You can control the format choice for desktop vs mobile, and also set Good-Loop to only display for desktop/mobile if you wish.

If you want to use a specific format, you can override default behaviour by setting the attribute `data-format` and/or `data-mobile-format` to one of:

 - `medium-rectangle` a 300 x 250px block, good for the side of the page, or as an inset in an article.
 - `leaderboard` a 728 x 90px banner, good for the top of the page, inline in articles, or across the bottom.
 - `sticky-footer` a full-width x 90px banner that sticks to the bottom of the page. This is the default for mobile - there should be no need to set this.
 - `vertical-banner` a thin 120 x 240px block, for when space is very limited.

For example, here's a tag which will always be a medium-rectangle, even on mobile:

```
<script src='//as.good-loop.com/unit.js' async></script>
<div class='goodloopad' 
	data-format='medium-rectangle' 
	data-mobile-format='medium-rectangle'>
</div>
```

Notes: 

* Whitespace doesn't affect the tag, as long as it remains valid html.
* Medium Rectangle, Leaderboard, and Vertical Banner. are [IAB standard formats](https://en.wikipedia.org/wiki/Web_banner#Standard_sizes)


## Left, Right, and Centre

Many people whom aren't necessarily CSS wizards often ask, 'How do I centre the ads on my page?'.  Well, the long answer is something along the lines of, 'Each webpage is unique and has its own CSS rules governing it'.  However, there is an example piece of code that we can give you to help those of us whom just want a solution to what seems to be a simple request.   If you want to *try* the following code on your page to see if you can centre the adunit:

```
<script src='//as.good-loop.com/unit.js' async></script>
<div class="goodloopad" style="text-align: center; padding-left: 25%; padding-right: 25%;"></div>
```


## Blocking Ads on a Page

How do you not show an ad? Easy: You decide where to place the `<div class='good-loop-ad'></div>` tags -- no tag, no ad.

However that can be cumbersome if you want an ad on most pages, but with a few exclusions. For this case, we also have an "advert blacklist" tag. If you place this tag on a page, it will disable Good.Loop adverts on that page -- they won't show at all.

```
<div class='good-loop-adblock'></div>
```