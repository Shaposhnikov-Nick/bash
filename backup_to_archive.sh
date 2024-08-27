#!/bin/bash

date=$(date "+%Y_%m_%d")
sourceDir="/home/nikolay/source"
backupDir="/home/nikolay/backup"
backupPath="$backupDir"/backup-"$date.tar.gz"

if [ ! -d "$sourceDir" ]; then
	echo "$sourceDir does not exist"
	exit 1
fi

if [ ! -d "$backupDir" ]; then
	mkdir "$backupdir"
	echo "backup directory $backupdir created"
fi

if tar -cvzf "$backupPath" "$sourceDir" ; then
	echo "Data from $sourceDir was backed up successfully"
	exit 0
else
	echo "Error occured during backup"
	exit 1
fi


