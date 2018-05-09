
# How to Install Good-Loop in Your App

1. Email us (support@good-loop.com) to get your Good-Loop App ID.

2. Make a button to launch Good-Loop.   
Good-Loop adverts are opt-in: you offer them to users as an action they can take. How you do this will depend on your app. It could be a button, a tile in a stream, a menu item...

Here are some graphics you can use for making buttons:

TODO

3. Wire your button up. 
When the user clicks the button, it must open a full-screen web view with the url:

`https://as.good-loop.com/?gl.variant=app&site={Your Good-Loop App ID}&uxid={User ID}`

The User ID uses the following format: `id@service`.  

It is normally the ID your app uses followed by `@{Your Good-Loop App ID}`.

As an example, here are a few User IDs for us. 
On our own Good-Loop app (coming soon), we'll be 
`support@good-loop.com@goodloop.app`. The following are also valid User IDs for us: 
`support@good-loop.com@email`, or `goodloophq@twitter`, or on Facebook we're both `109499602873542@facebook` and `the.good.loop@facebook`.

4. 

