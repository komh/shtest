# Test if CR is written to a file as is

f="crlf-3.t"
printf "a\rb" > "$f.got"
cmp "$f.wanted" "$f.got"
