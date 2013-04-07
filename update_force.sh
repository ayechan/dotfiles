#!/bin/bash

read -p "Do you want to overwrite local directory with the contents of git remote repository ? " yn
case $yn in
  [Yy]* ) git fetch --all && git reset --hard origin/master
esac
