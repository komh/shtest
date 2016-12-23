# Test if a line number is printed when an error occurs

test `$SH line_number-1.t.sub 2>&1 | sed "s/^.*\[\(.*\)\]: \(.*\):.*$/\1\2/"` = 1xxx
