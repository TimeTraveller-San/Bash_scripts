#!/bin/bash

bz2="bzip2 -d <file> Does not save the original file \nbzip -dk <file> To save the original file"
tar="tar xzf <file>"
gz="gunzip <file>"
zip="unzip <file>"
rar="unrar x <file>"
targz="tar -xzf <file>"
sevenz="7z x <file>"
tarbz2="tar -xjf <file>"


if [[ $1 == "bz2" ]];
then echo -e "$bz2";
fi

if [[ $1 == "tar" ]];
then echo -e "$tar";
fi

if [[ $1 == "gz" ]];
then echo -e "$gz";
fi

if [[ $1 == "zip" ]];
then echo -e "$zip";
fi

if [[ $1 == "rar" ]];
then echo -e "$rar";
fi

if [[ $1 == "targz" ]];
then echo -e "$targz";
fi

if [[ $1 == "7z" ]];
then echo -e "$sevenz";
fi

if [[ $1 == "tarbz2" ]];
then echo -e "$tarbz2";
fi




