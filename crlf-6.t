# Test if CR+LF goes through a pipe as is

f="$0"
printf "a\r\nb" | cat > "$f.got"
cmp "$f.wanted" "$f.got"
