# Rebasing

## Git Rebase

Rebase - take changes from a feature and **replay** them to make it look like its always been off of master branch

take **off current** location and **relocate** it on top of master:

	git rebase master

If **merge conflicts** exist when rebasing, resolve them then:

	git rebase --continue
	
**Note**: because rebasing **replays** changes, you will need to resolve merge conflicts **1 by 1**

