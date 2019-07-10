if exists('g:VimIM_autodisable_deoplete') && g:VimIM_autodisable_deoplete == 0
    finish
endif

function! s:disable()
    if exists('*deoplete#disable')
        call deoplete#disable()
    endif
endfunction
function! s:enable()
    if exists('*deoplete#enable')
        call deoplete#enable()
    endif
endfunction

augroup VimIM_autodisable_deoplete_augroup
    autocmd!
    autocmd User VimIMStart call s:disable()
    autocmd User VimIMStop call s:enable()
augroup END

