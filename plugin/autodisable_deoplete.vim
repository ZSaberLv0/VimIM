let s:enable=0
function! s:disable()
    if exists('*deoplete#disable')
        let s:enable = deoplete#is_enabled()
        call deoplete#disable()
    endif
endfunction
function! s:enable()
    if s:enable && exists('*deoplete#enable')
        call deoplete#enable()
    endif
endfunction

augroup VimIM_autodisable_deoplete_augroup
    autocmd!
    autocmd User VimIMStart call s:disable()
    autocmd User VimIMStop call s:enable()
augroup END

