# Test if LF+CR goes through a pipe as is

f="crlf-9.t"
printf "a\n\rb" | cat > "$f.got"
cmp "$f.wanted" "$f.got"
