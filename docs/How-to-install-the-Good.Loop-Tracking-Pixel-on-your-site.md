# How to install the Good.Loop Tracking Pixel on your site

There are two versions, *enhanced* and *basic*. The first gives more information, whilst the second is easier to setup.

## 1. Enhanced Tracking (page-views and exits, e.g. click-throughs)

This is the best version, which can track when people exit your website. For example, if they click though to visit an affiliate (so it's useful for tracking conversions).

Insert the following snippet of html into your web-page:

~~~
<script async src='//as.good-loop.com/pxl.js'></script>
<img src='//lg.good-loop.com/pxl' 
	style='position:absolute;bottom:0px;left:0px;width:1;height:1;'/>
~~~

You can put this directly into the pages. Or if you use a tag manager (e.g. Google Tag Manager), then you can install the tracking pixel via this. Please contact us if you have any issues.

It is invisible. You shouldn't see anything when it's installed.

## 2. Basic Tracking (page-views only)

This version is really easy to install. It tracks page-views on your site, but it doesn't track exits.

The *tracking pixel* is a tiny transparent image (you can't actually see it on the page). When people visit the page, we store that information with a cookie. Then, when they see a Good-Loop adunit, we know they're interested in your charity, so we can include it as one of the options.

If you're using a template editor, just insert an image with the url: <code>//lg.good-loop.com/pxl</code>

Or if you can edit the page html, just put the following in:

~~~
<img src='//lg.good-loop.com/pxl' 
   style='z-index:-1;position:absolute;bottom:0px;left:0px;width:1;height:1;'/>
~~~

## How to test: Email us

Want to test your setup? Just email us an example url from your site and we'll check it's all working.

## Privacy Manifesto

Legal details: Within the UK and the EU, your page should let the user know that it uses cookies. You probably already do this, as pretty much every web-page uses cookies. 

We believe in user-rights, including the right to privacy. We respect the do-not-track browser setting (whereby users can request that we don't set a cookie), and we also allow users to later delete any data about themselves if they so wish.