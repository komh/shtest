# Test if last CR is trimmed if a line length is 1022 excluding CR+LF

me="$0"

env_test_1021=
env_test_1022=
env_test_1023=

. ./"$me.sub"

echo "env_test_1021 = '$env_test_1021'"
echo "env_test_1022 = '$env_test_1022'"
echo "env_test_1023 = '$env_test_1023'"

test ${#env_test_1021} = 1005 && test ${#env_test_1022} = 1006 &&
test ${#env_test_1023} = 1007
