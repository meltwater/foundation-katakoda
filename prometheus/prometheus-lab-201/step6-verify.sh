#!/bin/bash
set -e
if [ $(docker ps | grep 'blackbox\|prometheus' | grep Up | wc -l) == 2 ]; then 
  echo done; 
else 
  echo failed && exit 1; 
fi;