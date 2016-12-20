# Test if alone \ at the end of a line is used to concatenate the next line
# in a response file

test "x`$SH -c @arg_concat-1.t.rsp`" = 'x12\3\\\\\4'
