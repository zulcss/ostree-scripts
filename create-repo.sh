#!/bin/bash

# $1 - path to repo 

dir=$1
if [ -z $dir ]; then
	echo "You didnt supply a directory"
	exit 1
fi

repo=$(dirname $dir)
if [ ! -d $repo ]; then
	mkdir -p $repo
fi
echo "Creating repo in $dir"
ostree --repo=$dir init --mode=archive

