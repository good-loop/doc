
# .css / .less code-style guidelines

The less css/less we write, the better. It is horrible to maintain!

We use Bootstrap to provide a solid base for layout and basic widgets.

 - Use vanilla Bootstrap where possible. This saves time, reduces glitches, and is easier to maintain.

 - For a consistent look, think in terms of modular reusable widgets. E.g. try to avoid restyling a button with a specific selector, 
and instead consider: is this a change to all buttons of a certain type.

 - .less makes it tempting to write long and nested blocks. Please avoid this! It makes them hard to read, and typos become more dangerous.
 A block of less code should fit on the screen. If it doesn't, better to refactor into several blocks.

 - Try to make css classes semantically meaningful.

 - Use variables or mixins for colours and fonts -- so we can easily change font without having bits of inconsistency.

 - Layout rules are a minefield for cross-device gotchas. Please document the *why* behind a layout rule with a short comment.

 - Pull-requests are good for sharing knowledge and improving code. If in doubt, edit in a branch and do a PR.

## Less files

Follow js ClassNames in StudlyCaps e.g. 

- MessageStream.jsx
- MessageStream.less // related CSS

Are kept in src/style

Are compiled into css by webpack, as part of `npm run compile` or `watch.sh`.
