if !exists('g:VimIM_autodisable_deoplete') || g:VimIM_autodisable_deoplete != 0
    return
endif

let s:enableSaved=0
function! s:disable()
    if exists('*deoplete#disable')
        let s:enableSaved = deoplete#is_enabled()
        call deoplete#disable()
    endif
endfunction
function! s:enable()
    if s:enableSaved && exists('*deoplete#enable')
        call deoplete#enable()
    endif
endfunction

augroup VimIM_autodisable_deoplete_augroup
    autocmd!
    autocmd User VimIMStart call s:disable()
    autocmd User VimIMStop call s:enable()
augroup END

