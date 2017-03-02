#!/bin/bash
cd "/Users/Rob/Code/wldrmn/cog"

mkdir -p js

awk -F',' \
 '{ f="\"js/"$1".js\""; system("echo \"   var cog=["  $0 " ]; "            "\" >" f ); }'  \
 cog.csv