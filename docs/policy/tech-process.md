# Good-Loop processes

This handbook aims to summarize key processes in Good-Loop development.
The intended audience is Good-Loop tech and account staff.

## Support

When you are on support, your job is to handle incoming requests, deal with stale support requests, and check communications have gone out where needed.

1. Pester developers who have "Stale Support".

- If you can handle it quickly yourself, finish the work and get back in touch with the person who sent the support request.
- Otherwise sternly inform the person whose task it is that this is overdue. The degree of sternness should be based upon how old the issue is.

2. Handle normal support. The task here is to ensure that everything on this list is either assigned to someone, or is closed.

- If you can handle this issue now, handle it, reply to the issue sender and close it.
- If you can handle this issue, but don't have time now, assign it to yourself.
- If you can't handle this issue, assign it to someone who can.

3. Check <span class='email' data-name='support' data-domain='good-loop.com'>support at good-loop.com</span>.

## Backporting

### When to backport and hotfix

Backporting takes time and effort, and is vulnerable to errors. Therefore, you should only backport code if there's a pressing reason to do so. This procedure should only be used in the case of bugs or issues which directly and negatively affect customers.

### How to backport

If you have to backport something here's the procedure.

Backport your code from master to release-X as nescessary.

Create a hotfix (see "how-to-create-a-hotfix").

Add a #backport tag to the issue so that we know this fix was backported.
