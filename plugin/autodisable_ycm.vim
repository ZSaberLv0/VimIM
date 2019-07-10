if exists('g:VimIM_autodisable_ycm') && g:VimIM_autodisable_ycm == 0
    finish
endif

function! s:disable()
    let g:ycm_auto_trigger = 0
endfunction
function! s:enable()
    let g:ycm_auto_trigger = 1
endfunction

augroup VimIM_autodisable_ycm_augroup
    autocmd!
    autocmd User VimIMStart call s:disable()
    autocmd User VimIMStop call s:enable()
augroup END

