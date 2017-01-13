# Test if CR+LF is removed in backtick(``)

f="crlf-cmd-subst-1.t"
l=`printf "a\r\n"`
printf '%s' "$l" > $f.got
cmp "$f.wanted" "$f.got"
