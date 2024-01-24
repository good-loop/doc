<div class="container">
    <div class="row">
        <div class="col-md-12">
            <center>
                <H2>Good-Loop VAST/VPAID ad output</H2>
            </center>
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
            <div class="col-md-4 right-border">
                <p>
                    In the Good-Loop Portal, after you have created a new video ad, you can view the ad either on the Good-Loop demo page or you can copy VPAID/VAST code and use it in Google Ad Manager.
                </p>
            </div>
            <div class="col-md-8">
                <img class="width-contain" src="img/02-portal-copy-vast-tag-edited.png">
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4 right-border">
            You can take your copied Good-Loop VAST/VPAID URL and immediately test it using <a href="https://developers.google.com/interactive-media-ads/docs/sdks/html5/vastinspector" target="_blank">Google's Video Suite Inspector</a>
        </div>
        <div class="col-md-8">
            <img class="width-contain" src="img/03-google-vast-inspector-test-portal-tag-edited.png">
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <center>
                Once you see that your test is working, you can move on to using your Google Ad Manager Account to start processing your Good-Loop VAST/VPAID URL
            </center>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <center>
            <H2>Create a new Ad Unit</H2>
        </center>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4 right-border">
            Once you've logged into your Google Ad Manager account, click on Inventory->Ad units
            <br>
            Create a new Ad Unit on the current level of your network
        </div>
        <div class="col-md-8">
            <img class="width-contain" src="img/04-google-gam-new-ad-unit-edited.png">
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4 right-border">
            When setting up your new Ad Unit, select a VAST video size of 400x300v
        </div>
        <div class="col-md-8">
            <img class="width-contain" src="img/05-google-gam-ad-unit-size-edited.png">
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <center>
                Go ahead and generate a Tag for your new Ad Unit.  Start by clicking on "Generate Tag" on the right-hand side of the screen.
                <br>
                Generating the correct tag will involve 4 steps:
            </center>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <ul class="list-group">
                <center>
                    <li class="list-group-item">
                        Step 01: <img class="onethird-height" src="img/06-google-gam-ad-unit-generate-tags-01-edited.png">
                    </li>
                    <li class="list-group-item">
                        Step 02: <img class="onethird-height" src="img/07-google-gam-ad-unit-generate-tags-02-edited.png">
                    </li>
                    <li class="list-group-item">
                        Step 03: <img class="twothirds-height" src="img/08-google-gam-ad-unit-generate-tags-03-edited.png">
                    </li>
                    <li class="list-group-item">
                        Step 04: Make sure to copy your generated tag and paste it in a text editor of your choice.  Keep this tag safe, we'll need it at the end of this tutorial. <img class="onethird-height" src="img/09-google-gam-ad-unit-generate-tags-04-edited.png">
                    </li>
                </center>
            </ul>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <center>
                <H2>Create a new Line Item and Order</H2>
            </center>
            <hr>
        </div>
        <div class="col-md-4 right-border">
            Click on Delivery->Line Items. And click on the "New Order" button.
        </div>
        <div class="col-md-8">
            <img class="width-contain" src="img/10-google-gam-new-line-order-edited.png">
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4 border-right">
            Give your new order a name, and select an appropriate advertiser. Likewise, give your new line item a name. Select the radio button next to "Video VAST" and put in "400x300v" for a size.
        </div>
        <div class="col-md-8">
            <img class="width-contain" src="img/11-google-gam-new-order-00-edited.png">
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4 border-right">
            Scroll down to the "Ad targeting" section, and include the new Ad Unit that you previously created.
            <br>
            You are now ready to click "Save"
        </div>
        <div class="col-md-8">
            <img class="width-contain" src="img/12-google-gam-new-order-01-edited.png">
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4 border-right">
            Now that you've saved your new Line item, you must approve it.
        </div>
        <div class="col-md-8">
            <img class="width-contain" src="img/13-google-gam-new-order-approve-edited.png">
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <center>
                <H2>Create a new "Creative Set"</H2>
            </center>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4 border-right">
            Click on Delivery->Creatives, and click on the header tab "Creative sets".  Now click on "New Creative Set".
        </div>
        <div class="col-md-8">
            <img class="width-contain" src="img/14-google-gam-creative-sets-00-edited.png">
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4 border-right">
            Select an appropriate advertiser for your new creative set. Select the "Video VAST" radio button, and put "400x300v" in the size field.
        </div>
        <div class="col-md-8">
            <img class="width-contain" src="img/15-google-gam-creative-sets-01-edited.png">
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4 border-right">
            Give your new Creative Set a name, and click on the "Redirect" type of creative set.
            <br>
            This will expand the rest of the options that are available for this type of creative. You will now want to paste your Good-Loop VAST URL in the "VAST Tag URL" field.
        </div>
        <div class="col-md-8">
            <img class="width-contain" src="img/16-google-gam-creative-sets-02-edited.png">
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4 border-right">
            Go ahead and click on the "TEST" button next to the input field.  This will open a separate browser window that is full of XML (you can close that new window) and Google Ad Manager will also read and discern as much of the VAST URL that you've just given it.
        </div>
        <div class="col-md-8">
            <img class="width-contain" src="img/17-google-gam-creative-sets-03-edited.png">
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4 border-right">
            Go ahead and click "Save"
        </div>
        <div class="col-md-8">
            <img class="width-contain" src="img/18-google-gam-creative-sets-04-edited.png">
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4 border-right">
            You will now be able to associate your newly created "Creative", with your Line Item that you made in the last section.
        </div>
        <div class="col-md-8">
            <img class="width-contain" src="img/19-google-gam-creative-sets-05-edited.png">
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4 border-right">
            Add your new "line item" to your new "creative".
        </div>
        <div class="col-md-8">
            <img class="width-contain" src="img/20-google-gam-creative-sets-06-edited.png">
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <center>
                <H2>Wait for it ...</H2>
                Yes, you read that header correctly.  You must wait for Google Ad Manager to actually make your new VAST Tag live. Give it 20-30 minutes before you move on to the next section.
            </center>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <center>
                <H2>Test it</H2>
            </center>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4 border-right">
            Open a new browser tab to <a href="https://developers.google.com/interactive-media-ads/docs/sdks/html5/vastinspector" target="_blank">Google's Video Suite Inspector</a> and get your generated tag [that you made and saved in the first section of this tutorial] ready for use (copy it).
            <br>
            Past your generated tag into the Google Video Suite Inspector and click "Test Ad".  You should see your ad appear in the video player.
        </div>
        <div class="col-md-8">
            <img class="width-contain" src="img/22-google-vast-inspector-final-step-edited.png">
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <center>
                That's it.  You have now successfully told Google's Ad Manager Suite to serve a VAST video which is redirected from the Good-Loop platform.
            </center>
        </div>
    </div>
</div>