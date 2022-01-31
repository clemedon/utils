DIR=*
for d in $DIR
do
    echo "-------[ $d ]"
    git --git-dir=$d/.git --work-tree=$PWD/$d push origin main
done
