#!/bin/bash

## Update the path where you want to find the duplicate ids
cd sakai/portal

## duplicate ids
find . -type f -regex '.*\.\(vm\|html\|js\|hbs\|jsp\)' -exec grep -oP '(?<=id=")[^"]*' {} \; | sort | uniq -d | sort -nr | uniq -c | awk '{print $2}' | sort -u | uniq -c | awk '{print $2}' | sort -u | uniq -c | awk '{print $2}' | sort -
