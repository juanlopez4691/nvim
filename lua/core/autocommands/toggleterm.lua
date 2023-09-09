local augroup = vim.api.nvim_create_augroup('terminal_keymaps', {})

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}

  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.api.nvim_create_autocmd(
  {'TermOpen'},
  {
    pattern = 'term://*',
    group = augroup,
    callback = function()
      set_terminal_keymaps()
    end
  }
)

-- Change cursor shape in terminal attending to mode.
vim.api.nvim_set_hl(0, 'TerminalCursorShape', { underline = true })
vim.api.nvim_create_autocmd('TermEnter', {
  callback = function()
    vim.cmd [[setlocal winhighlight=TermCursor:TerminalCursorShape]]
  end,
})
