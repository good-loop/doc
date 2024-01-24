# Good-Loop and VAST/VPAID

## Good-Loop VAST/VPAID Ad Output

In the Good-Loop Portal, after you have created a new video ad, you can view the ad either on the Good-Loop demo page or you can copy VPAID/VAST code and use it in Google Ad Manager.

![Good-Loop Portal Copy VAST Tag](img/02-portal-copy-vast-tag-edited.png)

---

You can take your copied Good-Loop VAST/VPAID URL and immediately test it using [Google's Video Suite Inspector](https://developers.google.com/interactive-media-ads/docs/sdks/html5/vastinspector)

![Google VAST Inspector Test Portal Tag](img/03-google-vast-inspector-test-portal-tag-edited.png)

---

Once you see that your test is working, you can move on to using your Google Ad Manager Account to start processing your Good-Loop VAST/VPAID URL

## Create a new Ad Unit

Once you've logged into your Google Ad Manager account, click on Inventory->Ad units
Create a new Ad Unit on the current level of your network

![Google GAM New Ad Unit](img/04-google-gam-new-ad-unit-edited.png)

---

When setting up your new Ad Unit, select a VAST video size of 400x300v

![Google GAM Ad Unit Size](img/05-google-gam-ad-unit-size-edited.png)

---

Go ahead and generate a Tag for your new Ad Unit.  Start by clicking on "Generate Tag" on the right-hand side of the screen.

Generating the correct tag will involve 4 steps:

Step 1: Select tag type

![Google GAM Ad Unit Generate Tags 01](img/06-google-gam-ad-unit-generate-tags-01-edited.png)

Step 2: Select tag options

![Google GAM Ad Unit Generate Tags 02](img/07-google-gam-ad-unit-generate-tags-02-edited.png)

Step 3: Addtional Tag Parameters

![Google GAM Ad Unit Generate Tags 03](img/08-google-gam-ad-unit-generate-tags-03-edited.png)

Step 4: Make sure to copy your generated tag and paste it in a text editor of your choice. Keep this tag safe, we'll need it at the end of this tutorial.

![Google GAM Ad Unit Generate Tags 04](img/09-google-gam-ad-unit-generate-tags-04-edited.png)

## Create a new Line Item and Order

Click on Delivery->Line Items. And click on the "New Order" button.

![Google GAM New Line Order](img/10-google-gam-new-line-order-edited.png)

---

Give your new order a name, and select an appropriate advertiser. Likewise, give your new line item a name. Select the radio button next to "Video VAST" and put in "400x300v" for a size.

![Google GAM New Order 00](img/11-google-gam-new-order-00-edited.png)

---

Scroll down to the "Ad targeting" section, and include the new Ad Unit that you previously created.

You are now ready to click "Save"

![Google GAM New Order 01](img/12-google-gam-new-order-01-edited.png)

---

Now that you've saved your new Line item, you must approve it.

![Google GAM New Order Approve](img/13-google-gam-new-order-approve-edited.png)

## Create a new "Creative Set"

Click on Delivery->Creatives, and click on the header tab "Creative sets".  Now click on "New Creative Set".

![Google GAM Creative Sets 00](img/14-google-gam-creative-sets-00-edited.png)

---

Select an appropriate advertiser for your new creative set. Select the "Video VAST" radio button, and put "400x300v" in the size field.

![Google GAM Creative Sets 01](img/15-google-gam-creative-sets-01-edited.png)

---

Give your new Creative Set a name, and click on the "Redirect" type of creative set.

This will expand the rest of the options that are available for this type of creative. You will now want to paste your Good-Loop VAST URL in the "VAST Tag URL" field.

![Google GAM Creative Sets 02](img/16-google-gam-creative-sets-02-edited.png)

---

Go ahead and click on the "TEST" button next to the input field.  This will open a separate browser window that is full of XML (you can close that new window) and Google Ad Manager will also read and discern as much of the VAST URL that you've just given it.

![Google GAM Creative Sets 03](img/17-google-gam-creative-sets-03-edited.png)

---

Go ahead and click "Save"

![Google GAM Creative Sets 04](img/18-google-gam-creative-sets-04-edited.png)

---

You will now be able to associate your newly created "Creative", with your Line Item that you made in the last section.

![Google GAM Creative Sets 05](img/19-google-gam-creative-sets-05-edited.png)

---

Add your new "line item" to your new "creative".

![Google GAM Creative Sets 06](img/20-google-gam-creative-sets-06-edited.png)

## Wait for it ...

Yes, you read that header correctly.  You must wait for Google Ad Manager to actually make your new VAST Tag live. Give it 20-30 minutes before you move on to the next section.

## Test it

Open a new browser tab to [Google's Video Suite Inspector](https://developers.google.com/interactive-media-ads/docs/sdks/html5/vastinspector) and get your generated tag [that you made and saved in the first section of this tutorial] ready for use (copy it).

Past your generated tag into the Google Video Suite Inspector and click "Test Ad".  You should see your ad appear in the video player.

![Google VAST Inspector Final Step](img/22-google-vast-inspector-final-step-edited.png)

---

That's it.  You have now successfully told Google's Ad Manager Suite to serve a VAST video which is redirected from the Good-Loop platform.