# Git Branching

## Alias

certain long git commands by using:

	git config --global alias.command_name "git command to alias"

ex:

	git config --global alias.lga "git log --graph --online --all --decorate"

type:

	git lga

## Basic Terms

HEAD - pointer that points to current branch
	
## Create New Branch

	git branch branch_name optional_branch_to_branch_from

or

creates branch if not created **already**

	git checkout -b branch_name


## Rename Branch

	git branch -m current_name new_name
	
## Stashing

To **stash** changes:

	git stash optional_branch_name

To **access** changes:

	git stash list
	
To **reapply** changes:

	git stash apply

To **reapply** changes & **remove** last stashed change:

	git stash pop

