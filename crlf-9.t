# Test if LF+CR goes through a pipe as is

f="$0"
printf "a\n\rb" | cat > "$f.got"
cmp "$f.wanted" "$f.got"
