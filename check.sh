test_programs=`ls *.t`

for t in $test_programs; do
  "$SH" "$t" > "$t.out" 2> "$t.err" &&
    { rm "$t.out" "$t.err"; echo "PASS: $t"; } || echo "FAIL: $t"
done
