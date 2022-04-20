#!/bin/bash
read file
LineCount=$(wc --lines "$FILENAME") #(b)toatal lines
echo $LineCount