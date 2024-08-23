#!/bin/bash

for i in ya.ru vk.com google.com
do
	ping -c4  -q $i &> /dev/null && echo "$i is available" || echo "$i is unreachable"
done
