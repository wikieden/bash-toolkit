#!/bin/bash
#===============================================================================
#          FILE:  install.sh
# 
#         USAGE:  ./install.sh 
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
#       CREATED:  12/23/2011 09:44:54 CST
#      REVISION:  ---
#===============================================================================


TARGET_PATH="/tmp/install_bash_tookit"
TARGET_FILE="bash-toolkit.tar.gz"
TARGET_DIR="bash-toolkit"
TARGET_LINK="https://github.com/chzealot/bash-toolkit/tarball/master"
WGET="`which wget|awk -F" " '{print $1}'` --no-check-certificate"
MKDIR="`which mkdir|awk -F" " '{print $1}'`"
MV="`which mv|awk -F" " '{print $1}'`"
RM="`which rm|awk -F" " '{print $1}'`"
TAR="`which tar|awk -F" " '{print $1}'`"
MAKE="`which make|awk -F" " '{print $1}'`"
CWD=`pwd`

# download
if [[ ! -d $TARGET_PATH ]]; then
    $MKDIR -p $TARGET_PATH
fi
cd $TARGET_PATH
$WGET "$TARGET_LINK" -O $TARGET_FILE

# extract
$RM -rf $TARGET_DIR
$RM -rf chzealot-bash-toolkit-*
$TAR zxvf $TARGET_FILE
$MV chzealot-bash-toolkit-* $TARGET_DIR
cd $TARGET_DIR
$MAKE install

cd $CWD

INCLUDED=0
if [[ `grep "\.bash\.d" ~/.bashrc` ]]; then
    INCLUDED=1
fi
if [[ `grep "\.bash\.d" ~/.bash_profile` ]]; then
    INCLUDED=1
fi
if [[ $INCLUDED = 0 ]]; then
    echo "" >> ~/.bashrc
    echo "# add by bash-tookit installer" >> ~/.bashrc
    echo "# see https://github.com/chzealot/bash-toolkit" >> ~/.bashrc
    echo "if [ -f ~/.bash.d/bashrc ]; then" >> ~/.bashrc
    echo "    . ~/.bash.d/bashrc" >> ~/.bashrc
    echo "fi" >> ~/.bashrc
fi

$RM -rf $TARGET_PATH
