# Test if 'cd' works with a drive-relative path

me="$0"

drv=$(pwd | cut -c 1)
dir=mksh_cd

base="$(pwd)"

echo "$base" > $base/$me.wanted
echo "$base/$dir" >> $base/$me.wanted

# cd x:
cd "$drv:"  # no outputs
pwd > $base/$me.got

mkdir $dir

# cd x:dir
cd "$drv:$dir"  # no outputs
pwd >> $base/$me.got

cd $base

rmdir $dir

diff $me.wanted $me.got
