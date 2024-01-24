## I cannot preview your ad from Google DfP

_Or, 'Your ad doesn't appear to work very well on the DfP preview page'_
Yes, we agree. This is not a fault of you, nor is it a fault of our coding. We place the blame on Google. You see, even though you've ticked that little 'Use Safeframe' box during your DfP setup; Google DfP's Preview tool does NOT display our ad enclosed within a Safeframe. We have no idea why this glaring oversight exists.
But we can assure you, that our ad will not be previewed correctly on the DfP Preview pane.

Fortunately, DfP _does_ properly use SafeFrames where it really matters: on live pages. It is just the preview page that doesn't.

### How Can I preview your Ad on my Website?

Wanting to preview our Ad is a perfectly reasonable want/need. Who would want a dysfunctional Ad on their nice website? Therefore we have some suggested methods of testing/previewing our Ad on your website.

**For Wordpress Users:** Create a copy of one of the pages of your site. DO NOT PUBLISH IT. But rather, put the code in for our advert in the desired place on your new copy, and click on the "Preview Page" link.  
**For Ad-Media Admins:** Put hyper-specific audience-targeting parameters in place when setting up our Ad for your website, such-that you (and only you) should be able to see our Advert when you visit your website.

## The Ad looks funny / doesn't behave as expected

### Does it fail to expand?

99% of the time, the reason is that our Ad is being served through DfP without the necessary Safeframe. The other 1% of the time is due to an overlapping CSS rule that inadvertently prevents iframes from sizing properly. If you believe that you are part of this 1%, then try to alter your CSS on your site. Otherwise, please contact us, and we'll take a look at it, and send advice.

#### Does it get partly covered by other elements?

This is usually due to a CSS rule in your site -- most commonly it's caused by z-index stacks.
Please contact us, and we'll send advice.
