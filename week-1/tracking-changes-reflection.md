## Tracking Changes Reflection

- How does tracking and adding changes make developers' lives easier?
- What is a commit?
- What are the best practices for commit messages?
- What does the HEAD^ argument mean?
- What are the 3 stages of a git change and how do you move a file from one stage to the other?
- Write a handy cheatsheet of the commands you need to commit your changes?
- What is a pull request and how do you create and merge one?
- Why are pull requests preferred when working with teams?

<!-- Add your reflection here. Remove the comment markers -->
- How does tracking and adding changes make developers' lives easier?
Ability to roll back and distinguish problems easily.
- What is a commit?
Commit is like a save point where all the changes are being kept but not affecting the original copy yet.
- What are the best practices for commit messages?
Using conventional header with detail explanation of the changes. -v parameter will bring up the message file for more detail information.
- What does the HEAD^ argument mean?
It means the previous commit stage.
- What are the 3 stages of a git change and how do you move a file from one stage to the other?
Untracked, staged, committed. From Untracked to Staged, use git add; from Staged to Untracked, use git reset; from Staged to Committed, use git commit; from Committed to Untracked, use reset.
- Write a handy cheatsheet of the commands you need to commit your changes?
git pull -> git add -> git commit
- What is a pull request and how do you create and merge one?
It checks the version and update the current version if not the newest. After fetching the newest version of the repo using "git fetch origin master", use "git merge origin/master" to merge.
- Why are pull requests preferred when working with teams?
This will make sure the current local copy of the project is the most current one.