# Test if returning a correct error code when a child was siangled
sleep.exe 3 &
# On OS/2, exec() is implmeneted with spawn(P_WAIT)
# $! is PID of a forked process. $! + 1 is a real child
pid1=$!
pid2=$(($! + 1))
echo "PID1 = $pid1, PID2 = $pid2"
# Wait until a real child is executed
#sleep 0.2
kill -9 $pid1
wait $pid1
rc=$?
echo "rc = $rc"
wait $pid2
rc2=$?
echo "rc2 = $rc2"
# rc: SIGKILL(9) = 128 + 9 = 137, SIGTERM(15) = 128 + 15 = 143
# rc2: wait: 127 = unknown pid
(test "$rc" = "137" || test "$rc" = "143") && test "$rc2" = "127"
