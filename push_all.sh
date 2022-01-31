# find . -type d -depth 1 -printf '%p' -exec git --git-dir={}/.git --work-tree=$PWD/{} push origin main \;
DIR=*
for d in $DIR
do
    git --git-dir=$d/.git --work-tree=$PWD/$d push origin main
done
