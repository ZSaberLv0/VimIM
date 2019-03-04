if exists('g:VimIM_autodisable_ycm') && g:VimIM_autodisable_ycm == 0
    finish
endif

let s:enableSaved=0
function! s:disable()
    if exists('g:ycm_auto_trigger')
        let s:enableSaved = g:ycm_auto_trigger
    else
        let s:enableSaved = -1
    endif
    let g:ycm_auto_trigger = 0
endfunction
function! s:enable()
    if s:enableSaved == -1
        unlet g:ycm_auto_trigger
    elseif s:enableSaved == 1
        let g:ycm_auto_trigger = 1
    endif
endfunction

augroup VimIM_autodisable_ycm_augroup
    autocmd!
    autocmd User VimIMStart call s:disable()
    autocmd User VimIMStop call s:enable()
augroup END

