#!/bin/bash

REMOTE_HOST="10.10.0.2"
REMOTE_USER="biscepsa"
REMOTE_DIR="/usr/local/bin"

scp cat/s21_cat grep/s21_grep $REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR/

if [ $? -ne 0 ]
then
	echo "Error copy files. Deployment failed"
	exit 1
fi

ssh $REMOTE_USER@$REMOTE_HOST ls $REMOTE_DIR

if [ $? -ne 0 ]
then
	echo "Error move files. Deployment failed"
	exit 1
fi

echo "Deployment successful"
