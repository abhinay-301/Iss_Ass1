#!/bin/bash
read file

FILENAME=$1
FILESIZE=$(stat -c%s "$FILENAME") # (a)size of file
echo $FILESIZE



