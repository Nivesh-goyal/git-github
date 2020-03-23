#!/bin/bash
echo "merger conflict generating"
# "checking out to master"
git checkout master
# "creating file and appending line into a file in master branch0"
touch master_file
echo "this file is creatd by master" > master_file
git add master_file
git commit -m "file created by master"
# checking out and creating a new branch
git checkout -b nivesh_goyal
# changing th file content and commiting the changes
echo "\"this file is creatd by master and comes here in another and modified\"" > master_file
git add master_file
git commit -m "master file is modified by nivesh branch"
# checking to master to merger the another branch
git checkout master
git merge nivesh_goyal
