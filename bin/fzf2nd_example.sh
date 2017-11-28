arg=$(find -type f | fzf2nd)
set $arg
echo selected num : $#
echo selected factors : $@
echo selected factor1 : $1
