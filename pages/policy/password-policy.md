# SoDash Password Policy

Policy Owner: Senior Sys-Admin


## Selecting Passwords

Passwords must be complex, following the Stanford Password Policy. Pass-phrases -- passwords made up of several words -- are recommended.

The requirements are based on password length:

 - 8-11: mixed case letters, numbers, & symbols
 - 12-15: mixed case letters & numbers
 - 16-19: mixed case letters
 - 20+: no restrictions

Passwords must only use ASCII characters (no unicode).

Passwords must not:

 - Be based on obvious facts which an attacker could learn about you, such as your name, your DOB, your child's name, etc.
 - Be reused -- each system should have a separate password.
 - Be a single word that appears in the dictionary (English or non-English), even with some letters changed into symbols.
 
If you have trouble remembering a longer password, write it down on a piece of paper, put the paper in your wallet, and use the same caution with it as you would with a credit card.

### Creating a pass phrase

A pass phrase is basically just a series of words, which can include spaces, that you employ instead of a single pass "word." Pass phrases should be at least 16 to 25 characters in length (spaces count as characters), but no less. Longer is better because, though pass phrases look simple, the increased length provides so many possible permutations that a standard password-cracking program will not be effective. It is always a good thing to disguise that simplicity by throwing in elements of weirdness, nonsense, or randomness. Here, for example, are a couple pass phrase candidates:

pizza with crispy spaniels
mangled persimmon therapy

Punctuate and capitalize your phrase:

Pizza with crispy Spaniels!
mangled Persimmon Therapy?

Toss in a few numbers or symbols from the top row of the keyboard, plus some deliberately misspelled words, and you'll create an almost unguessable key to your account:

Pizza w/ 6 krispy Spaniels!
mangl3d Persimmon Th3rapy?

Reference: Stanford University Password Policy, http://itservices.stanford.edu/service/accounts/passwords


## Email Security

Email security is vital, because most password reminder/reset services work via email. Hence if an attacker gains access to your email, they can attack many other systems.


## Log Out

When using sensitive systems: log-out when done, or if leaving the system unattended.


## SSH Keys

Several systems are protected by SSH key instead of passwords. 

 - Do not keep a copy of your SSH key on removable media (e.g. a pen drive).
 - Do not allow anyone else to use your SSH key.


## Changing Passwords

If you have any suspicion that a password or SSH key has become compromised: notify support, and change the password.
