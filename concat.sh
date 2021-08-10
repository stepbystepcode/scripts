#!/bin/bash
if [ -z "$3" ];then
    echo -n 'Please enter the output file name.'
    read name
    mv $(pwd)/$1 $(pwd)/1.mp4
    mv $(pwd)/$2 $(pwd)/2.mp4
    echo "file '1.mp4'">>$(pwd)/filelist.txt
    echo "file '2.mp4'">>$(pwd)/filelist.txt
    ffmpeg -f concat -i $(pwd)/filelist.txt -c copy $name
    rm $(pwd)/1.mp4
    rm $(pwd)/2.mp4
    rm $(pwd)/filelist.txt
else
    mv $(pwd)/$1 $(pwd)/1.mp4
    mv $(pwd)/$2 $(pwd)/2.mp4
    echo "file '1.mp4'">>$(pwd)/filelist.txt
    echo "file '2.mp4'">>$(pwd)/filelist.txt
    ffmpeg -f concat -i $(pwd)/filelist.txt -c copy $3
    rm $(pwd)/1.mp4
    rm $(pwd)/2.mp4
    rm $(pwd)/filelist.txt
fi
