DIR=*
for d in $DIR
do
    if [[ -d $d/.git ]]
    then
        echo "-------[ $d ]"
        git --git-dir=$d/.git --work-tree=$PWD/$d pull origin main
    fi
done
