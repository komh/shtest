# Test if LF is written to a file as is

f="$0"
printf "a\nb" > "$f.got"
cmp "$f.wanted" "$f.got"
