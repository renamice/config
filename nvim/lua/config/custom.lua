-- Netrw
vim.cmd([[let g:netrw_bufsettings = 'relativenumber']])

-- Customize netrw to open files/directories in a vertical split on the left
vim.cmd([[
  augroup netrw_mapping
    autocmd!
    autocmd filetype netrw call NetrwMapping()
  augroup END

  function! NetrwMapping()
    " Map 'o' to open in a vertical split on the right
    nmap <buffer> o <Cmd>call NetrwOpenVertical()<CR>
  endfunction

  function! NetrwOpenVertical()
    let l:filename = netrw#Call('NetrwGetWord')  " Get the file/directory under the cursor
    if !empty(l:filename)
      execute 'vertical split ' . l:filename
    endif
  endfunction
]])
