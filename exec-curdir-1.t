# Test if a command in a current directory is executed without $PATH
PATH=
exec-curdir-1.t.sub
test "$?" = "127"