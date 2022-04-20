#!/bin/bash
read file
WordCount=$(wc -w "$FILENAME")  #(c) total words in a file
echo $WordCount