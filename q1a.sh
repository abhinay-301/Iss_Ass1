#!/bin/bash

grep "\S" quotes.txt | cat > new.txt 
mv new.txt quotes.txt

# grep     for remove empty line 
# \S       include empty line with spaces
#  cat >   to overwite content in file
