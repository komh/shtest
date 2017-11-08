# Test if very long command line is passed

me="$0"

a=xxxxx

while [ ${#a} -lt 32768 ]; do
  a="$a$a$a$a$a$a"
done

b=$($SH -c "echo $a")

test "$a" = "$b"
