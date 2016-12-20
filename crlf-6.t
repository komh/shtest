# Test if CR+LF goes through a pipe as is

f="crlf-6.t"
printf "a\r\nb" > "$f.got"
cmp "$f.wanted" "$f.got"
