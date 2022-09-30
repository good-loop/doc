
# Git Workflow Policy / Process

### Keep your repos and github up to date

For all developers:

* **pull, commit, and push at least once a day.**
* Remember that we have quite a few repos, and the `wwappbase.js` repo is sym-linked into several projects. 
It's best to pull all the repos using the `code/script/gsync` script.

#### Enabling gsync

In terminal:
```
cd ~
nano .bashrc
```
Add the following scripts to the end of `.bashrc`:
```
export WINTERWELL_HOME="~/winterwell"
export PATH=$WINTERWELL_HOME/code/script:$PATH
```
You should be able to use `gsync` in new terminal window afterwards. 

#### Using gsync

 - `gsync` to pull all the repos.
 - `gsync message` to **push** all the repos with the attribute as message. 

### Shared js code: wwappbase.js

 - The way we share js code between different projects is using the `wwappbase.js` repo. In each repos, `src/js/base/` is actually linked to `../../../wwappbase.js/base`. 
 - When you edit the codes inside of `src/js/base/`, beware that you are also changing the codes of other repos. 
 - When you need to edit the shared codes, remember to also commit and push in `/wwappbase.js`.

Note: we have tried other approaches like git modules and npm packages. They were a bit painful.


### Feature Branches and Pull Requests

Work should be done via:

0. Make a ticket and talk to Dan (CTO) and Lauren (Sprint Manager).
1. Make a branch and switch to it.
2. Work in the branch.
3. Create a pull-request (PR) and assign one of your colleagues as a reviewer.
4. The reviewer does a code-review, then asks for edits or makes the merge.

Pull-requests (PRs) help to make code-reviews part of normal working. That is good for catching bugs, for sharing knowledge around the team, and for writing better code.

### Beware of Long-lived Branches!

Having multiple branches on the go can lead to bugs and confusion. Issues caused by branches are:

- Code drift between versions makes extra work (and its confusing work too).
- Fighting the same bug multiple times.
- Branch-mismatch bugs.
- Version conflicts.
- Lots of branches reduce transparency, making joint work harder.

So avoid letting feature branches stay open for a long time (e.g. over a month is too long). 
A branch should be opened, worked on, then merged into master via a PR. 

It is OK for the master branch to hold unfinished code, provided it isn't going to block other people. You can merge partly-done work into master.

When you create a branch:

 - Always push the new branch to github.
 - Always mention that on chat with the branch name.

When you finish a task:

 - run `git merge master` to make sure your branch is up to date with the latest code.
 - Make a pull-request (PR) on github.
 - Assign a colleague to review your code. That person should do the merge (or ask for some edits).
 - However you can also merge code yourself, e.g. if a fix is needed promptly.

### Branch names: `feature or bugfix/year-month/keywords`

When you start a new task, make a new branch, e.g.:

```
git checkout -b feature/2022-09/my-shiny-feature
git push
```

Git will then give you a set-upstream command to run - do that.

### Master and release branches

The master branch is the latest plausible code. You can expect it to mostly work. But you can also expect it to have bugs.

We create branches from master when we have a release-candidate. These are called release(date).
The release branches should be stable and (fairly) bug-free.

Bug-fixes should be applied to `master` first, then back-ported (e.g. via cherry-pick) to the release branch. Very rarely should code be written on a release branch -- it's too easy to forget to port the edit back to master, and so lose a bugfix.
