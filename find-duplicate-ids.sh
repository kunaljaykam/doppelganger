#!/bin/bash

## Determine the paths to the files to be checked
cd sakai/portal

## duplicate ids
find . -type f -regex '.*\.\(vm\|html\|js\|hbs\|jsp\)' -exec grep -oP '(?<=id=")[^"]*' {} \; | sort | uniq -d | sort -nr | uniq -c | awk '{print $2}' | sort -u | uniq -c | awk '{print $2}' | sort -u | uniq -c | awk '{print $2}' | sort -
