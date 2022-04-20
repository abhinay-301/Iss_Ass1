#!/bin/bash

awk '!seen[$0]++' quotes.txt > quotes_new.txt
mv quotes_new.txt quotes.txt