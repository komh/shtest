# Test if CR+LF is written to a file as is

f="crlf-2.t"
printf "a\r\nb" > "$f.got"
cmp "$f.wanted" "$f.got"
