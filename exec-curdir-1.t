# Test if a command in a current directory is executed without $PATH

me="$0"
PATH=/usr/bin
"$me.sub" 2> /dev/nul
test "$?" = "127"
