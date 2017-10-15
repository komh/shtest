# Test if a line number is printed when an error occurs

me="$0"
test $($SH $me.sub 2>&1 | sed "s/^.*\[\(.*\)\]: \(.*\):.*$/\1\2/") = 1xxx
