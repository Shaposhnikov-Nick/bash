#!/bin/bash

# backup work directory
# 0 23 * * *

if [ ! -d ~/backup ]; then
  mkdir ~/backup
  echo "Backup directory created"
fi

cd ~/work 
tar cf work_$(date +%Y-%m-%d_%H-%M-%S).tar ~/work
mv *.tar ~/backup

