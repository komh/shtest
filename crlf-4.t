# Test if LF is written to a file as is

f="crlf-4.t"
printf "a\nb" > "$f.got"
cmp "$f.wanted" "$f.got"
