# Test if CR goes through a pipe as is

f="$0"
printf "a\rb" | cat > "$f.got"
cmp "$f.wanted" "$f.got"
