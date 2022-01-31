# find . -type d -depth 1 -printf '%p' -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin main \;
DIR=*
for d in $DIR
do
    git --git-dir=$d/.git --work-tree=$PWD/$d pull origin main
done
