# Test if some bytes at the beginning of a line are eaten when EOL mark is
# CR+LF

me="$0"

func_lalib_unsafe_p ()
{
    lalib_p=no
    if test -f "$1" && test -r "$1" && exec 5<&0 <"$1"; then
     for lalib_p_l in 1 2 3 4
     do
         read lalib_p_line
         printf '%s : %s\n' "$lalib_p_l" "$lalib_p_line"
         case $lalib_p_line in
          \#\ Generated\ by\ *$PACKAGE* ) lalib_p=yes; break;;
         esac
     done
     exec 0<&5 5<&-
    fi
    test yes = "$lalib_p"
}

func_lalib_unsafe_p "./$me.in"
