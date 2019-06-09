
# Password Policy

Policy Owner: Senior Sys-Admin

## Mandatory Password Changes

No employee password should be used for more than 365 days.  When a password has reached this age, it must be discarded and replaced by a new one.  This affects workstations, workspace logins, wiki logins, etc. This policy is in place to align ourselves with the UK's Cyber Security Protocols.

## Selecting Passwords

Passwords must be complex. Pass-phrases -- passwords made up of several words -- are recommended.

If you can setup two-factor-authentication (e.g. where a code is sent to your phone as part of the login) -- do so!

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
 

## Remembering Passwords / Password Managers

If you have trouble remembering a longer password, write it down on a piece of paper, put the paper in your wallet, and use the same caution with it as you would with a credit card.

The use of secure password managers is allowed -- KeePass2 or LastPass are recommended.
If you use a password manager, you must be extra careful with the master password, and you must setup a form of 2-factor authentication.

## Creating a pass phrase

A pass phrase is basically just a series of words, which can include spaces, that you employ instead of a single pass "word." Pass phrases should be at least 16 to 25 characters in length (spaces count as characters), but no less. Longer is better because, though pass phrases look simple, the increased length provides so many possible permutations that a standard password-cracking program will not be effective. It is always a good thing to disguise that simplicity by throwing in elements of weirdness, nonsense, or randomness. Here, for example, are a couple pass phrase candidates:

```
pizza with crispy spaniels
mangled persimmon therapy
```

Toss in some punctuation, capitals, and some deliberately misspelled words, and you'll create an almost unguessable key to your account -- but which is still easy for you to remember:

```
Pizza, w 6 krispy Spaniels!
Mangled persimmon Th3rapy?
```

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
