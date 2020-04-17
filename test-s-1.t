# Test if test -s works without a suffix on the executable file

f="$0"
echo dummy > "$f.dummy.exe"
test -s "$f.dummy"
