# Test if returning a correct error code when a child was siangled
sleep.exe 3 &
echo "PID1 = $!, PID2 = $(($! + 1))"
# On OS/2, exec() is implmeneted with spawn(P_WAIT)
# $! is PID of a forked process. $! + 1 is a real child
kill -9 $(($! + 1))
wait $!
rc=$?
echo "rc = $rc"
# SIGKILL(9) = 128 + 9 = 137, SIGTERM(15) = 128 + 15 = 143
test "$rc" = "137" || test "$rc" = "143"
