-- Netrw
vim.cmd([[let g:netrw_bufsettings = 'relativenumber']])

vim.api.nvim_create_autocmd('filetype', {
  pattern = 'netrw',
  desc = 'Better mappings for netrw',
  callback = function()
    local bind = function(lhs, rhs)
      vim.keymap.set('n', lhs, rhs, { remap = true, buffer = true })
    end

    -- edit new file
    bind('n', '%')

    -- rename file
    bind('r', 'R')
  end
})

-- Not in user right now
function ToggleNetrw()
  -- Check if any buffer is a netrw buffer
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_get_option(buf, 'filetype') == 'netrw' then
      -- If netrw is open, close it
      vim.api.nvim_buf_delete(buf, { force = true })
      return
    end
  end
  -- If netrw is not open, open it in a vertical split on the right or as full
  vim.cmd('vertical 25Vex')
end

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
