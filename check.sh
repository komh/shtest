test_programs=$(ls *.t)

for t in $test_programs; do
  if "$SH" "$t" > "$t.out" 2> "$t.err" &&
     test "$(stat -c%s "$t.err")" = 0 ; then
    rm "$t.out" "$t.err"
    echo "PASS: $t"
  else
    echo "FAIL: $t"
  fi
done
