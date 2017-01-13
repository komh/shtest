# Test if alone \ at the end of a line is used to concatenate the next line
# in a response file

me="$0"
test "x`$SH -c @$me.rsp`" = 'x12\3\\\\\4'
