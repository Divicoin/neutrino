#!/bin/bash

git checkout $(cat go.sum | grep -A1 github.com/Divicoin/btcd | tail -n1 | awk -F " " '{ print $2 }' | awk -F "-" '{ print $3 }' | awk -F "/" '{ print $1 }')
