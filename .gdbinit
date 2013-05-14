set prompt \033[01;31m(gdb) \033[0m

define hook-backtrace
echo \033[01;33m
end

define hookpost-backtrace
echo \033[0m\n
end

set print pretty on
set print object on
