#!/bin/bash
cd "/Users/Rob/Code/wldrmn/cog"

mkdir -p html

awk -F',' \
 '{ f="\"html/"$1".html\""; system("echo \"   <html><head><title>" $0 "</title></head><body><h1> " $0 " </h1></body></html>"            "\" >" f ); }'  \
 cog.csv