#!/bin/bash

git config --global core.editor vim
git config --global color.ui true
git config --global core.pager "more"
git config --global core.whitespace \
    trailing-space,space-before-tab,indent-with-non-tab

git config --global alias.st "status"
git config --global alias.ci "commit"
git config --global alias.lg "log --graph --date=relative --pretty=tformat:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%an %ad)%Creset'"
git config --global alias.oops "commit --amend --no-edit"
git config --global alias.co "checkout"
git config --global alias.br "branch"
git config --global alias.last "log -5 HEAD"
