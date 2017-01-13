# Test if LF+CR is written to a file as is

f="$0"
printf "a\n\rb" > "$f.got"
cmp "$f.wanted" "$f.got"
