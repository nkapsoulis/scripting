#!/bin/bash

array=( one two three )
for i in "${array[@]}"
do
	echo $i
done

# OR
images='dockerImage1 dockerImage2'
for img in "${images[@]}"; do echo $img; done