#!/bin/bash

## Determine the paths to the files to be checked
cd sakai/portal

## print duplicate ids
find . -type f -regex '.*\.\(vm\|html\|js\|hbs\|jsp\)' -exec grep -oP '(?<=id=")[^"]*' {} \; | sort | uniq -d | sort -nr | uniq -c | awk '{print $2}' | sort -u | uniq -c | awk '{print $2}' | sort -u | uniq -c | awk '{print $2}' | sort -

## print the files that contain the duplicate ids
# find . -type f -regex '.*\.\(vm\|html\|js\|hbs\|jsp\)' -exec grep -oP '(?<=id=")[^"]*' {} \; | sort | uniq -d | sort -nr | uniq -c | awk '{print $2}' | sort -u | uniq -c | awk '{print $2}' | sort -u | uniq -c | awk '{print $2}' | sort -u | while read line; do echo $line; find . -type f -regex '.*\.\(vm\|html\|js\|hbs\|jsp\)' -exec grep -H $line {} \; | awk -F: '{print $1}'; done
