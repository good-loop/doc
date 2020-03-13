
# Privacy Policy

We will respect and protect your privacy.
This privacy policy applies to all the services we provide, notably ad-serving.

We promise:

* Your data belongs to you.
* We will never sell or give your private information to a third party (unless you actually ask us to, or we are required to do so by law).
* No Good-Loop worker will look at your private information (unless it's to fix an issue in the Good-Loop system, or to respond to you personally). Our workers all sign non-disclosure agreements.
* Your messages and other private content belong to you.
* Good-Loop will never send a message in your name or on your behalf.
* You can delete your data from our systems (unless we are required to keep it by law or for audit purposes).

In using Good-Loop, you agree:

* You authorise Good-Loop to store information relating to your account.
* If you sign up to a service, then we can contact you as part that service, e.g. to tell you about new features or if there is an issue with your account.
* Anonymous data is OK. We can use data from your account in anonymised analysis, and the anonymised data is our property. For example, Good-Loop learns what adverts work on what websites. We may also publish anonymous statistics, such as "Good-Loop has generated £X million in donations last month", or produce a report for the charities helping them understand the pattern of donations.
* We can use cookies to provide better services. Cookies can link together your visits, and collect IP address (from which we get an approximate city-level location). You can opt-out of cookies by setting Do-Not-Track in your browser, or via the My.Good-Loop web app, which also provides controls to remove your data. Or here and now, using the buttons below.
* If you post content to a public part of the site then you grant us an open licence to use that content. An example would be posting a public comment on a blog we host. This does not affect private content, which remains private!
* When you're not signed in to Good-Loop, we store the information that we collect with a meaningless identifier linked to the browser, application, or device that you're using. This helps us do things such as avoid showing you repeat adverts. You can manage this data via the [My.Good-Loop](https://my.good-loop.com) web app. The data collected by our ad server is:
    * The type of device and browser (the user-agent).
    * The website visited, so we can work out which websites are a good fit for our content.
    * The country you're in and your preferred language.
    * The IP address, for country and to protect against fraud.
    * How you respond to our adverts and which charities you pick.
 
<div>
Let us track your donations and ad-watching with cookies? This raises more money for charity.
<button id="yesBtn" style="background:#DDDDDD" onclick="setDNT(false);">Yes</button>
<button id="noBtn" style="background:#DDDDDD" onclick="setDNT(true);">No</button>
<p id="DNToff" style="display:none">OK - we won't track you.</p>
<p id="DNTon" style="display:none">Thank you - this improves our service.</p>
<script>
function setDNT(on) {
   document.cookie='DNT='+(on?1:0)+'; path=/; Domain=good-loop.com';
   if (on) {
      document.getElementById('DNToff').style.display='block';
      document.getElementById('DNTon').style.display='none';
      document.getElementById('noBtn').style.background='#28a745';
      document.getElementById('yesBtn').style.background='#DDDDDD';
   } else {
      document.getElementById('DNToff').style.display='none';
      document.getElementById('DNTon').style.display='block';
      document.getElementById('yesBtn').style.background='#28a745';
      document.getElementById('noBtn').style.background='#DDDDDD';
   }
};
let c = document.cookie+'';
if (c.indexOf('DNT=') !== -1) {
   let dnt = c.indexOf('DNT=1') !== -1;
   setDNT(dnt);
}
</script>
</div>

## Legal Details

If you're in the EU, then you have considerable rights on data about you, thanks to a law called the GDPR.
We're keen to give you practical value from those rights -- sign-up to [My.Good-Loop](https://my.good-loop.com)
to see the tools we're building for public use.

ICO Registration number: ZA275147

Good-Loop Ltd is company SC548356, registered in the UK. Our registered address is 27 McDonald Road, Edinburgh, EH7 4LX.

If you want to contact us about your data, please email 
<span class='email' data-name='support' data-domain='good-loop.com'>support at good-loop.com</span>.

Lawful basis for using data:

 - Where we are a Data Controller for personal data, this is done with consent from the user. See the My-Loop app for more details.
 - We use IP address for the legitimate purposes of anti-fraud security, and determining the country we're sending content to.
 - Much of our data is genuinely anonymous - it could not be used to identify the person.

See our [GDPR Policy](data-gdpr-policy) for more details.

To see and manage the data we might hold about you - please see the [My.Good-Loop app](https://my.good-loop.com).

Good-Loop is applying to participate in the IAB Europe Transparency & Consent Framework (TCF) and complies with its Specifications and Policies.
