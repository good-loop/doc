# Preamble
This wiki article assumes that you already have a Doubleclick For Publishers account from Google.

# Where to Begin
## 01. The **All** Orders Page
When navigating around DfP, you may find the UI pushing you towards a page called "My Orders", but we are a company, and we have many people working on the same DfP account, so what we want to see is the page called "All Orders" 
<br>
![ALL orders - Page](https://as.good-loop.com/vert/01-DfP-Tutorial-All-Orders-Page.png)
## 02. Create a New Order
When creating a new order, fill in the following fields using the suggestions:
1. Name - use the naming format of $date-$mon-$sizeOfAd-$productionOrTest
2. Advertiser - This can be populated by any company that is registered on the account, real or fictitious
3. Line Item Name - use the naming format of $date-$mon-$sizeOfAd-$productionOrTest
4. Inventory Size - use only one size, do not put more than one size in here. I don't care, just put in one and only one.
5. Start Time - Use today's date
6. End Time - End it sometime in the future
7. Quantity - Put in a large integer. Like 10,000
8. Rate - £0.50 seems to work for our tests
9. Deliver Impressions - Set this to "As Fast as Possible" because this will ensure that the ad gets shown immediately

Hit that Save button, and you'll see a page showing you your new line item. Pay attention to the buttons above your line item, one of them says "Approve". **YOU MUST CLICK THIS BUTTON** and you might see DfP warn you that you are about to overbook, but we don't care about that, so go ahead and overbook. Now click on your Line-Item. Now you'll be redirected to your Line-Item's Overview Page.
![blank](https://as.good-loop.com/vert/02-DfP-Tutorial-New-Creative.png)
On this page, DfP will warn you that you need to create a new "creative" for this new line item. So let's do that.
## 03. Create A New Creative for your New Order
Click on "**Add New Creative**" , and you'll be redirected to this page:
![New Creative](https://as.good-loop.com/vert/03-DfP-Tutorial-Select-Creative-Type.png)
We want the **FIRST CHOICE** , ("Third Party") 
Give this new Creative the same Naming-Schema-Format as before, $date-$mon-$sizeOfAd-$productionOrTest 
In the Code Snippet field, You will paste in your custom code and then click on "Save".
# Stage 2: Generating Tags, and Serving
## Creating The New Adunit
Right, You've made your order, and you've associated a "creative" with that order. So Now it is time to put in some final settings, and generate tags for the actual serving of your new ad. 
Click on "Inventory" from the highest menu bar. You'll be directed to a page which looks similar to this image: 
![New AdUnit](https://as.good-loop.com/vert/04-DfP-Tutorial-New-AdUnit.png)
1. Click on 'New ad unit'
2. Select 'Current Level'
3. Give the new unit a CODE(which is a 'name' but with no spaces or special characters allowed) according to the aforementioned Name-Schema. ($date-$mon-$sizeOfAd-$productionOrTest)
4. Specify the size of this unit as the **EXACT SAME SIZE** of the creative and order that you have just made.
**!! THIS NEXT STEP IS THE MOST IMPORTANT STEP OF THIS ENTIRE TUTORIAL !!** You'll see:

![override](https://as.good-loop.com/vert/05-DfP-Tutorial-Newadunit-OVERRIDE-zoom.png)

Click on "override" and **UN-TICK THE BOX** . Failing to do this will allow Google to sell the adspace to higher bidders and/or advertisers whom might fit the expected demographic better than you ad. It is simply the worst thing ever. 
Click on "Save"
## Generating The Tags
Now that your new Adunit has been saved, you can see a link near the right-hand-side of the page, which allows you to generate tags. Go ahead and generate your tags, and you'll be given the code snippet that you'll need for the header section of the target web-page, as well as the code snippet that you'll need to insert somewhere in the body of the target web-page.
## Propagation Time
10Minutes, Brand-new ads propagate slightly faster than 10 minutes. Whereas, code changes on the backend can sometimes take up to 10minutes before the change has been fully propagated.
## Beware
Turn Off Your Ad-Blocker
# Top-Tips and Gotcha's
## Previewing Your Ad in a SafeFrame
You Can't. The Preview does NOT render into a SafeFrame, so it's confusingly useless.
## Unfriendly host-page CSS
It's easy to break a SafeFrame's ability to expand to full-page - in fact, it may be the default in Wordpress. A common rule goes something like:
~~~
iframe, some other element types {
	max-width: 100%;
}
~~~
...which restricts the iframe's width to 100% of the parent element's - which is almost always very small, so our lightbox will be the height of the viewport, but only 300px (or similar) wide.

If our publisher is cooperative, a CSS rule such as (Not Exactly this, but something like this):
~~~
iframe[id^='google_ads_iframe_'] { // matches any iframe whose id begins with "google_ads_iframe_"
	max-width: none;
}
~~~





