# Merging

## Merge Differences / Conflicts

Compare repo to staging area

	git diff --cached
	

When viewing conflicts in editor:

	<<<<<<< HEAD
	content1
	===========
	content2
	>>>>>>> branch_name
	
content1 refers to changes in **current** repo

&

content2 refers to changes in branch that is trying to merge into current branch

Conflicts occur when changes happen on the **same line**

