# Test if a command in a current directory is executed without $PATH

me="$0"
PATH=/usr/bin
"$me.sub"
test "$?" = "127"
