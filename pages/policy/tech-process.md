# Good-Loop processes

This handbook aims to summarize key processes in Good-Loop development.
The intended audience is Good-Loop tech and account staff.

## Support

When you are on support, your job is to handle incoming requests, deal with stale support requests, and check communications have gone out where needed.

1) Pester people who have "Stale Support". This is handled by the Stream 01) Stale Support. The task here is to try to get anything under this tab processed, tagged closed, and properly replied to. 
- If you can handle it yourself, finish the work and get back in touch with the person who sent the support request.
- If you can't, sternly inform the person whose task it is that this is overdue. The degree of sternness should be based upon how old the issue is.

2) Handle normal support. This is handled by the Stream 02) Unassigned support. The task here is to try to assure that everything on this list is either assigned to someone, or is closed.
- If you can handle this issue now, handle it, reply to the issue sender and close it.
- If you can handle this issue, but don't have time now, assign it to yourself.
- If you can't handle this issue, assign it to someone who can.

3) Handle bad comms requests. This is handled by the Stream 03) Unanswered Comms
- If there is anything in this list, remind the person who completed the issue that they need to send out communications.

4) Check support@soda.sh. We should be trying to wean people off using this channel for actionable traffic. If actionable traffic arrives there, please refile to group-issues@soda.sh and send a snotty note asking the sender to get it right in future. 

## Backporting

### When to backport

Backporting takes time and effort, and is vulnerable to errors. Therefore, you should only backport code if there's a pressing reason to do so. This procedure should only be used in the case of bugs or issues which directly and negatively affect customers.

### How to backport

If you have to backport something here's the procedure.

Mark the issue which needs backporting with the Mandatory tag of the release it is to apply to. At the time of writing, we're working on 12_4-1 and 12_4 is stable. So the issue would have the tag #12_4. Anything which is going to be backported should also include the #backport tag, to let us know it should be backported.

Backport your code from master to stable as nescessary.

Create a hotfix (see "how-to-create-a-hotfix").

The #backport tag should remain in place after backporting so that we know this fix was backported.

## Special tags that are used in issues

- comms-later: issues that should be communicated at the end of a sprint; highlights for release notes
- punt: issues that the assignee thinks should be punted (@DW or @JI to review?)
