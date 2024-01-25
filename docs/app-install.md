## How to Install Good-Loop in Your App

### 1. Join the programme

Email us to get your Good-Loop App ID, and to agree to the programme terms (tl:dr; don't be an ass).

Our email is: <span class='email' data-name='support' data-domain='good-loop.com'>support at good-loop.com</span>

### 2. Make a button to launch Good-Loop.

Good-Loop adverts are opt-in: you offer them to users as an action they can take. How you do this will depend on your app. It could be a button, a tile in a stream, or a menu item. It's up to you.

Here are some ideas you can use for making buttons:

<button class='btn btn-light' >
	<img src='/img/buttons/donate-by-watching-button.png'>
</button>

- [Animated CTAs](https://drive.google.com/open?id=1lY54O4fGGnuY6djEUpnafYZUG1uMLIq4)

### 3. Wire your button up.

When the user clicks the button, it must open a full-screen web view with the url:

```
https://as.good-loop.com/?gl.variant=app&site={Your Good-Loop App ID}&uxid={User ID}
```

The User ID uses the following format: <code>id@service</code>.

It is normally the ID your app uses followed by <code>@{Your Good-Loop App ID}</code>.

As an example, here are a few User IDs for us.
On our own Good-Loop app (coming soon), we'll be
<code>support@good-loop.com@goodloop.app</code>. The following are also valid User IDs for us:
<code>upport@good-loop.com@email</code>, or <code>goodloophq@twitter</code>, or on Facebook we're both <code>109499602873542@facebook</code> and <code>the.good.loop@facebook</code>.

Remember to provide a way for the user to return to the main part of your app by pressing back.

That's it! You're now ready to serve ads, support charities, and make money.

### 4. Passing profile information for targeted ads.

Targeted adverts are optional, but they are much more valuable -- they make on average 5x more money. To have targeted adverts, you provide information about them to our adserver, so it can pick relevant adverts.

First, you must get the user's consent. Explain what data will be shared (which is up to you to decide -- the more data, the more value), and how it will be used (to pick more relevant ads). For example your app could say:

> Good-Loop would like to know some non-identifying information about you (gender, country and city, approximate age, and topics of interest), so they can pick more relevant adverts. This will really boost the money you raise for charity! This data will not be shared and you can delete it later.
> Do you agree to this? (yes) (no)

Note: User's can revoke consent, and we will remove our copy of their data. We suggest your settings page provides them with a link to us so they can do that if they wish. The page for this is in development, but the url will be <code>https://my.good-loop.com/#unsub?site={Your Good-Loop App ID}&uxid={User ID}</code>.

Then, pass profile info by calling our profiler API (ask us for docs). Your app can call the profile API repeatedly. Best practice is to call it when the user enters data (e.g. at the end of sign-up), or edits their data (e.g. in settings).
