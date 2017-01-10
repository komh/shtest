# Test if CR goes through a pipe as is

f="crlf-7.t"
printf "a\rb" | cat > "$f.got"
cmp "$f.wanted" "$f.got"
