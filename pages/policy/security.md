
# Security Policy

Good-Loop takes security very seriously, and we follow best-practice methods to protect our systems.
We aim to keep all data safe and secure -- protected
against both accidental damage and deliberate attacks.

## Security and Process

We operate a policy of open and continuous improvement. All technical
staff are kept aware of the high-level risks around data handling, and
are encouraged to report any new low-level risks which they identify.

We perform risk assessment and risk management as part of our
development planning. New developments are assessed for risks at the
roadmap / sprint-planning stage. Controls are introduced as
appropriate, and identified risk factors are specifically checked
during quality assurance testing.

Our processes, including security measures, are documented in a
company wiki. Staff are trained to check this when performing
unfamiliar tasks.

## Reporting Security Issues

To report a security issue: *email <span class='email' data-name='support' data-domain='good-loop.com'>support at good-loop.com</span>*

Any of the following should be reported:

* Unauthorised access to systems or office premises.
* Evidence of a system being compromised.
* Confidential data being handled without care.
* Possible breaches of data-protection.
* Suspected issues and causes for concern.

The support team treat security issues as high priority.

## Office Security

Physical access to our offices and servers is strictly controlled.
Our offices are not accessible from the street. A key is required to access any office. 
We have a policy of routinely locking doors when out of office.

<!-- Our office computers and laptops use screen-savers with automatic screen locking. -->


## Handling Personal Data

Information / Data Protection Officer: Norman Thompson. Email: <span class="email" data-name="dpo" data-domain="good-loop.com">dpo at good-loop.com</span>

Good-Loop is registered under the Data Protection Act with the UK Information Commisioner's Office.

Personal data is stored securely at all times, and only accessed when necessary.
Staff are trained to take care over access to computers, memory-sticks, etc. with personal data on them.
Training includes the iHasco Cyber Security course.

Personal data is disposed of securely -- for example, paper documents with personal data are shredded, and hard-drives 
are securely wiped.
Server hard drives are wiped using one of three methods in the following order of availability:

1. Full Zeroing Pass
2. Random Zeroing Pass
3. DoD 3-Full Zeroing Passes

Hard Drives in the possession of the Edinburgh Office are subjugated to a DoD 3-Full Zeroing Passes process before the disks are repurposed or retired

### Process for breaches involving the Data Protection Act

Improper access to personal data is a disciplinary and potentially criminal offence.
Any suspected breaches, for example, unauthorised access to information by employees, must be reported to the Information Officer or to a Director.
The breach will be investigated, and the results of the investigation documented in a report.

If a breach was found to have occurred, then the company will take appropriate measures to:

 - Notify affected individuals.
 - Notify the authorities.
 - Limit any damage.
 - Prevent further breaches.

#### Logging Data Breaches and Near Misses

If a data breach or a near miss is reported, then this must be logged in the [Data Security Breach Register](https://docs.google.com/spreadsheets/d/13HHz7489jiWO9a0eCZ1ldWjiNCqTfO4VKwbt2yPwzjc).

### Individual Subject Access Rights

Individuals have the right to request a copy of the data we hold about them.
Enquiries should be made to the Information Officer, who will coordinate authenticating the 
individual's online identity, and collating the data for them. 

Please see the GDPR Policy for more information.

## Technical Security Measures

We follow best practices to keep our systems secure.

### Server Hosting

Our servers are hosted in a dedicated and secure data centre. 

### Data backup and encryption

Passwords and the login tokens used to access e.g. Twitter accounts are stored in encrypted form.

Data is backed up on a nightly basis and replicated off-site. All backups are encrypted with high-grade encryption.

### Access to Servers

Access to servers is strictly controlled. Our servers are hosted at reputable data-centres who comply with international hosting standards. 

Remote access is via secure multi-stage login. Low level server login is strictly controlled, requiring both an
authorised ssh key and a password, both of which are only held by
senior Good-Loop technical staff. 

### Browser/server communication

Good-Loop should be accessed via the secure https protocol, providing
security for data in transit. When Good-Loop connects with 3rd party
services such as Twitter, it does so over encrypted https.

Good-Loop uses an SSL certificate, and provides secure HTTPS connections. https is the standard secure method 
for secure internet connections, providing high-grade encryption.

### Software

Good-Loop only uses trusted third party software from reputable providers. This software is regularly updated to include any security updates from the provider to ensure the software security is maintained.
Services such as databases are secured by default, and are not directly accessible from outside our servers.

Software is only installed after clearance by a senior technical officer. Non authorised software is not allowed on company computers.

### Access to Development Computers

Physical access to office computers is controlled by security-managed keys, and secure logins. 

### Access to Client Data

Access to the Good-Loop system is via personal logins. Each user must have their own login, allowing for fine-grained security
control and audit trails. Every single web page request is logged for a minimum of two weeks. A 2 week audit trail is kept for all user actions. 

As with any system, clients are responsible for keeping their login details secure. 
If a login should become compromised, we will revoke that login which immediately stops all access.

Following best practice guidelines, we store
user passwords in encrypted form. A further layer of security is
provided at the application level by user roles and audit trails.

See also the [Access Control Policy](access-control-policy).

#### Data Export

Users can export data, in which case they take responsibility for access to it. Of course, a user can only export the data they are entitled to view and use.


### Storage of Client Data

Personally identifying details such as name and email addresses can be stored in Good-Loop databases, e.g. if someone signs up to a mailing-list. No payment and credit/debit card information will be stored at all in the Good-Loop databases. 

Customer passwords are not directly stored. Instead, a one-way hash is stored (using a secure hash function). This allows for the password to be checked, but it cannot be recovered.

### Connections with Third Party Systems

When connecting to a third party system, such as Twitter, Good-Loop uses the security provided by that system, typically the OAuth method combined with the secure HTTPS protocol. OAuth allows the client to control & revoke access by specific applications.

## Conclusion

Our security is built on a foundation of being prepared, being
alert, and being responsive.
