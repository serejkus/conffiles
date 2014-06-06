function SetMp()
    let s:make_cmd = input("Enter make command: ")
    let &mp = s:make_cmd
endfunction

function SwitchHeaders()
    let s:curname = bufname("%")
    let s:unsuffixed = substitute(s:curname, "[.].*$", "", "")
    if s:curname =~ "\.h$" || s:curname =~ "\.hpp$"
        let s:c = findfile(s:unsuffixed . ".c", "")
        if strlen(s:c) > 0
            execute "e " . s:c
        else
            let s:c_a = findfile(s:unsuffixed . ".cpp", "")
            if strlen(s:c_a) > 0
                execute "e " . s:c_a
            endif
        endif
    elseif s:curname =~ "\.c$" || s:curname =~ "\.cpp$"
        let s:h = findfile(s:unsuffixed . ".h", "")
        if strlen(s:h) > 0
            execute "e " . s:h
        else
            let s:h_a = findfile(s:unsuffixed . ".hpp", "")
            if strlen(s:h_a) > 0
                execute "e " . s:h_a
            endif
        endif
    endif
endfunction

