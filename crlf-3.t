# Test if CR is written to a file as is

f="$0"
printf "a\rb" > "$f.got"
cmp "$f.wanted" "$f.got"
