# Test if CR+LF is removed in $()

f="crlf-cmd-subst-2.t"
l=`printf "a\r\n"`
printf '%s' "$l" > $f.got
cmp "$f.wanted" "$f.got"
