# Test if LF goes through a pipe as is

f="crlf-8.t"
printf "a\nb" | cat > "$f.got"
cmp "$f.wanted" "$f.got"
