# Test if CR+LF is removed in backtick(``)

f="$0"
l=`printf "a\r\n"`
printf '%s' "$l" > $f.got
cmp "$f.wanted" "$f.got"
