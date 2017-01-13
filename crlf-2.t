# Test if CR+LF is written to a file as is

f="$0"
printf "a\r\nb" > "$f.got"
cmp "$f.wanted" "$f.got"
