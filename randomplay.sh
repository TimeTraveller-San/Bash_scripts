#!/usr/bin/env bash

base_dir="/home/timetraveller/Media/Tv Series/The Office"

#First calculate total episodes
total_eps=0
# IFS is input field seperator. A Normal for loop breaks at space.
IFS=$'\n'; for i in $(find "$base_dir" -name "*.mp4" -o -name "*.mkv"  -o -name "*.avi" | xargs -d '\n' realpath) ; do
    ((total_eps++))
done

#Find a positive random number less than total episodes
random_num=$(shuf -i 1-${total_eps} -n 1)

#Play the episode with index random_num
counter=0
IFS=$'\n'; for i in $(find "$base_dir" -name "*.mp4" -o -name "*.mkv" | xargs -d '\n' realpath) ; do
    ((counter++))
    if [ "$counter" -eq "$random_num" ];then
      mpv "$i";
    fi
done
