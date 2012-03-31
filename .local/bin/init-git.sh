#!/bin/bash -x
#===============================================================================
#          FILE:  init-git.sh
# 
#         USAGE:  ./init-git.sh 
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Zealot Ke (Zealot), chzealot@gmail.com
#       COMPANY:  losthit.com
#       VERSION:  1.0
#       CREATED:  03/31/2012 10:44:03 CST
#      REVISION:  ---
#===============================================================================

BASE_PATH=$(cd "$(dirname "$0")"; pwd)

PROJECT_NAME=$(basename `pwd`)

git init-db

touch README
git add README
git commit -s README -m "first commit"

git config --local --replace-all core.bare true

git config --local --add hooks.emailprefix "[$PROJECT_NAME]"

git config --local --add hooks.mailinglist "chzealot@gmail.com"

echo "$PROJECT_NAME" > .git/description

echo ". /usr/share/doc/git-core/contrib/hooks/post-receive-email" >>.git/hooks/post-receive

chmod +x .git/hooks/post-receive

mv .git $PROJECT_NAME.git

tar jcvf $PROJECT_NAME.git.tar.bz2 $PROJECT_NAME.git
