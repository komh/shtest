# Test if a .cmd file in a directory ending with /, such as X:/ in $PATH is
# executed
root="`pwd | cut -b -3`"
cmd="exec-path-1.t.sub.cmd"
cp "$cmd" "$root"
mv "$cmd" "$cmd.sav"
saved_PATH="$PATH"
PATH="$root"
"$cmd"
rc=$?
PATH="$saved_PATH";
mv "$cmd.sav" "$cmd"
rm -f "$root/$cmd"
test "$rc" = "0"
