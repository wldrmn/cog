#!/bin/bash
cd "/Users/Rob/Code/wldrmn/cog"

mkdir -p json

awk -F',' \
 '{ f="\"json/"$1".json\""; system("echo \"   {[ " $0 " ]}"            "\" >" f ); }'  \
 cog.csv