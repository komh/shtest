# Test if a .cmd in a current directory is executed by extproc before in $PATH
me="$0"

mkdir "$me.dir"
cat > "$me.dir/$me.sub.cmd" << EOF
echo oops...
EOF

cat > "$me.sub.cmd" << EOF
extproc $SH
echo ok
EOF

saved_PATH="$PATH"

# /.../bin for sh
export PATH="/bin;/usr/bin;/usr/local/bin;$me.dir"

rc=$("$OS2_SHELL" /c "$me.sub.cmd")

PATH="$saved_PATH"

rm "$me.sub.cmd"
rm -rf $me.dir

echo "$rc"

test "$rc" = "ok"
