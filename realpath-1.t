# Test if realpath works correctly

me="$0"

name=mksh.exe
drv=$(pwd | cut -c 1)
dir=mksh_realpath

echo "$(pwd)/$name" > $me.wanted
echo "$(pwd)/$name" >> $me.wanted
echo "$(pwd)/$dir/$name" >> $me.wanted

mkdir $dir

# name
realpath $name > $me.got

# x:name
realpath "$drv:$name" >> $me.got

# x:dir/name
realpath "$drv:$dir/$name" >> $me.got

rmdir $dir

diff $me.wanted $me.got
