#!/bin/bash

posts=$(ls _posts)
arr=($posts)
for var in ${arr[@]}
do
  out=$( cat "_posts/${var}" | html2markdown )
  name=$( echo ${var} | cut -d "." -f 1)
  echo $out > "_posts/${name}.md"
done
