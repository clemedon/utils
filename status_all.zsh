#!/usr/bin/zsh
DIR=*
for d in $DIR
do
    if [[ -d $d/.git ]]
    then
        echo "$(tput setaf 4)-------[ $d ]$(tput sgr0)"
        git --git-dir=$d/.git --work-tree=$PWD/$d status -sb
    fi
done

