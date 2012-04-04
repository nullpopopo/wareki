#!/bin/sh
LANG=ja_JP.utf8

case $1 in
    [0-9]*) date +%Ec --date=$1'years ago' | cut -b 1-22 \
             | sed -e "s/年[0-1][0-9]月[0-3][0-9]日/年/g;s/$/\t西暦$(LANG=C date +%Y --date=$1'years ago')年/g" \
             | sed s/年\ [1-3]/年'\t'/g ;;
    [[:alpha:]]) echo "USAGE $0 1";;
esac

