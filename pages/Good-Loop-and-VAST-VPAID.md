## Good-Loop VAST/VPAID ad output
In the Good-Loop Portal, after you have created a new video ad, you can view the ad either on the Good-Loop demo page or you can copy VPAID/VAST code and use it in Google Ad Manager.
<img src="img/02-portal-copy-vast-tag-edited.png">
<br>
<br>
You can take your copied Good-Loop VAST/VPAID URL and immediately test it using <a href="https://developers.google.com/interactive-media-ads/docs/sdks/html5/vastinspector" target="_blank">Google's Video Suite Inspector</a>
<img src="img/03-google-vast-inspector-test-portal-tag-edited.png">
<br>
<br>
Once you see that your test is working, you can move on to using your Google Ad Manager Account to start processing your Good-Loop VAST/VPAID URL
<br>
<br>
## Create a new Ad Unit
Once you've logged into your Google Ad Manager account, click on Inventory->Ad units
<img src="img/04-google-gam-new-ad-unit-edited.png">
Create a new Ad Unit on the current level of your network
<br>
When setting up your new Ad Unit, select a VAST video size of 400x300v
<img src="img/05-google-gam-ad-unit-size-edited.png">
<br>
Go ahead and generate a Tag for your new Ad Unit.  Start by clicking on "Generate Tag" on the right-hand side of the screen.
Generating the correct tag will involve 4 steps:
<br>
Step 01:
<img src="img/06-google-gam-ad-unit-generate-tags-01-edited.png">
<br>
Step 02:
<img src="img/07-google-gam-ad-unit-generate-tags-02-edited.png">
<br>
Step 03:
<img src="img/08-google-gam-ad-unit-generate-tags-03-edited.png">
<br>
Step 04:
Make sure to copy your generated tag and paste it in a text editor of your choice.  Keep this tag safe, we'll need it at the end of this tutorial.
<img src="img/09-google-gam-ad-unit-generate-tags-04-edited.png">
<br>
<br>
## Create a new Line Item and Order
Click on Delivery->Line Items. And click on the "New Order" button.
<img src="img/10-google-gam-new-line-order-edited.png">
<br>
Give your new order a name, and select an appropriate advertiser. Likewise, give your new line item a name. Select the radio button next to "Video VAST" and put in "400x300v" for a size.
<img src="img/11-google-gam-new-order-00-edited.png">
<br>
Scroll down to the "Ad targeting" section, and include the new Ad Unit that you previously created.
<img src="img/12-google-gam-new-order-01-edited.png">
You are now ready to click "Save"
<br>
Now that you've saved your new Line item, you must approve it.
<img src="img/13-google-gam-new-order-approve-edited.png">
<br>
<br>
## Create a new "Creative Set"
Click on Delivery->Creatives, and click on the header tab "Creative sets".  Now click on "New Creative Set".
<img src="img/14-google-gam-creative-sets-00-edited.png">
<br>
Select an appropriate advertiser for your new creative set. Select the "Video VAST" radio button, and put "400x300v" in the size field.
<img src="img/15-google-gam-creative-sets-01-edited.png">
<br>
Give your new Creative Set a name, and click on the "Redirect" type of creative set.
<img src="img/16-google-gam-creative-sets-02-edited.png">
<br>
This will expand the rest of the options that are available for this type of creative. You will now want to paste your Good-Loop VAST URL in the "VAST Tag URL" field.  Go ahead and click on the "TEST" button next to the input field.  This will open a separate browser window that is full of XML (you can close that new window) and Google Ad Manager will also read and discern as much of the VAST URL that you've just given it.
<img src="img/17-google-gam-creative-sets-03-edited.png">
<br>
Go ahead and click "Save"
<img src="img/18-google-gam-creative-sets-04-edited.png">
<br>
You will now be able to associate your newly created "Creative", with your Line Item that you made in the last section.
<img src="img/19-google-gam-creative-sets-05-edited.png">
<br>
Add your new "line item" to your new "creative".
<img src="img/20-google-gam-creative-sets-06-edited.png">
<br>
<br>
## Wait for it ...
Yes, you read that header correctly.  You must wait for Google Ad Manager to actually make your new VAST Tag live. Give it 20-30 minutes before you move on to the next section.
<br>
<br>
## Test it
Open a new browser tab to <a href="https://developers.google.com/interactive-media-ads/docs/sdks/html5/vastinspector" target="_blank">Google's Video Suite Inspector</a> and get your generated tag [that you made and saved in the first section of this tutorial] ready for use (copy it).
<br>
Past your generated tag into the Google Video Suite Inspector and click "Test Ad".  You should see your ad appear in the video player.
<img src="img/22-google-vast-inspector-final-step-edited.png">
<br>
That's it.  You have now successfully told Google's Ad Manager Suite to serve a VAST video which is redirected from the Good-Loop platform.