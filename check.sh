test_programs=$(ls *.t)

for t in $test_programs; do
  if "$SH" "$t" > "$t.out" 2> "$t.err" && rm "$t.out" "$t.err" ; then
    echo "PASS: $t"
  else
    echo "FAIL: $t"
  fi
done
