# Test if CR+LF is removed in $()

f="$0"
l=$(printf "a\r\n")
printf '%s' "$l" > $f.got
cmp "$f.wanted" "$f.got"
