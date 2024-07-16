#!/usr/bin/env sh

cd typ
for x in *typ; do
  file_name=$(echo $x | awk -F'.' '{print $1}')
  typst compile $x ../pdf/$file_name.pdf
done
