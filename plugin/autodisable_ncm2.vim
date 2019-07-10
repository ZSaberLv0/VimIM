if exists('g:VimIM_autodisable_ncm2') && g:VimIM_autodisable_ncm2 == 0
    finish
endif

function! s:disable()
    if exists('*ncm2#disable_for_buffer')
        call ncm2#disable_for_buffer()
    endif
endfunction
function! s:enable()
    if exists('*ncm2#enable_for_buffer')
        call ncm2#enable_for_buffer()
    endif
endfunction

augroup VimIM_autodisable_ncm2_augroup
    autocmd!
    autocmd User VimIMStart call s:disable()
    autocmd User VimIMStop call s:enable()
augroup END

