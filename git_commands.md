# GIT Commands
- **git init** = initializes git local repo.
- **git remote add origin  followed by `cloning path from git hub repo`** = duplicates remote repo to local repo.
- **git pull origin `branch name`** = pulls files from given branch.
> **Example:** git pull origin master.
- **git status** = displays untracked files, which are not added to index.
- **git add `file name with extension`** = adds mentioned file into index.
- **git add -A** = adds all files from local repo to index. 
- **git commit -m `description`** = commits file, which is added to index already.
- **git commit -a** = commits all files from local repo to remote repo.
- **git commit -a -m `description`** - = commits all files, which are added to index already.
- **git log** = logs detailed info on files.
- **git clone `git remote repo url`** = clones remote repo to local repo.
- **git checkout `branch name`** = you can switch you given branch.  
- **git branch -a** = lists out all branches in remote repo.
- **git branch -r** = displays all existing branches from remote repo.
- **git merge `branch name`** = you can merge given branch to existing branch.
> **Example:** if you are in master branch, then "git merge firstbranch" merges firstbranch to master branch.
- **git remote show origin** = displays origin name.
- **ssh- keygen** = generates ssh key to include in git repo.
- **ssh -T git@github.com** = validates ssh key which is addedt to git repo.
- **cat `file name`** = displays content in the file.

## How to create a local branch?
* First you need to create branch locally.
* git branch <branch name>= creates new branch locally.
* Then you need to push branch to remote repo via git push -u origin `branch name` = creates new branch on remote repo.
## How to delete Local Branch?
- **$ git branch -d `branch name`** = delete a local branch.
or
- **$ git branch -D `branch name`** = delete a local branch.
## How to create a remote branch?
- loading...

## How to delete remote branch?
- **$ git push origin --delete `branch name`** which might be easier to remember than **$ git push origin :`branch name`**


## I came across this...

**problem:** Entire computer is in Git status untracked files.   
**solution status:** worked.  
**reference:** https://stackoverflow.com/questions/34484800/entire-computer-in-git-status-untracked-files  
**solution**
- Move to home folder, using command : `cd ~` 
- Delete the git repo, using command : `rm -rf .git`

**problem:** It is very famous problem that we encounter many times, git push to `some user` is denied to `some user`   
**solution status:** worked.  
**reference:** https://stackoverflow.com/questions/17857283/permission-denied-error-on-github-push   
**solution**
- Go to: Control Panel -> User Accounts -> Manage your credentials -> Windows Credentials  
- Under Generic Credentials there are some credentials related to Github, Click on them and click "Remove".  
- When you try to push something, you need to login again. hope this will be helpful for you  




