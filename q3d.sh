#!/bin/bash
read file
awk '{print"Line No:",((1+i++)),"-",NF}' $file  
#word count in each line