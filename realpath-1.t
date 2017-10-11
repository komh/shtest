# Test if realpath works correctly

me="$0"

name=mksh.exe

echo "$(pwd)/$name" > $me.wanted
realpath $name > $me.got

diff $me.wanted $me.got
