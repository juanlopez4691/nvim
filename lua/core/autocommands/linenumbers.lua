-- Automatically toggle between relative and absolute line numbers.
local augroup = vim.api.nvim_create_augroup('line_number_toggle', {})

vim.api.nvim_create_autocmd(
  {'BufEnter', 'FocusGained', 'InsertLeave', 'CmdlineLeave', 'WinEnter'},
  {
    pattern = '*',
    group = augroup,
    callback = function()
      if vim.o.nu and vim.api.nvim_get_mode().mode ~= 'i' then
        vim.opt.relativenumber = true
      end
    end,
  }
)

vim.api.nvim_create_autocmd(
  {'BufLeave', 'FocusLost', 'InsertEnter', 'CmdlineEnter', 'WinLeave'},
  {
    pattern = '*',
    group = augroup,
    callback = function()
      if vim.o.nu then
        vim.opt.relativenumber = false
        vim.cmd 'redraw'
      end
    end,
  }
)

