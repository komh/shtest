# Test if a file is closed properly when a stdin is redirected to the file
# indirectly

echo hello 3>done >&3
rm done
