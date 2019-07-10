if exists('g:VimIM_autodisable_coc') && g:VimIM_autodisable_coc == 0
    finish
endif

function! s:disable()
    if exists(':CocDisable')
        CocDisable
        call coc#config('suggest.autoTrigger', 'none')
    endif
endfunction
function! s:enable()
    if exists(':CocEnable')
        call coc#config('suggest.autoTrigger', 'always')
        CocEnable
    endif
endfunction

augroup VimIM_autodisable_coc_augroup
    autocmd!
    autocmd User VimIMStart call s:disable()
    autocmd User VimIMStop call s:enable()
augroup END

