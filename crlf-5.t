# Test if LF+CR is written to a file as is

f="crlf-5.t"
printf "a\n\rb" > "$f.got"
cmp "$f.wanted" "$f.got"
