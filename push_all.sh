find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} push origin main \;
