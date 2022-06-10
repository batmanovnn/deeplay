#!/bin/bash

# 1
cat log.txt | grep ^10.1.192.38 |sed -e 's/sid=\// /; s/\/&/ /' |awk '{print $8}' | sort -k2

# 2
#cat log.txt | sed -e 's/sid=\// /; s/\/&/ /' |awk '/^10.1.192.38/{print NR, $8}' | sort -k2
