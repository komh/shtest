# Test if LF goes through a pipe as is

f="$0"
printf "a\nb" | cat > "$f.got"
cmp "$f.wanted" "$f.got"
