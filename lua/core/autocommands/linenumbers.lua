local opt = vim.opt

-- Automatically toggle between relative and absolute line numbers.
local augroup = vim.api.nvim_create_augroup('line_number_toggle', {})

vim.api.nvim_create_autocmd(
  { 'BufEnter', 'FocusGained', 'InsertLeave', 'CmdlineLeave', 'WinEnter' },
  {
    pattern = '*',
    group = augroup,
    callback = function()
      if vim.o.nu and vim.api.nvim_get_mode().mode ~= 'i' then
        opt.relativenumber = true
        opt.statuscolumn = '%=%{v:relnum ? v:relnum : v:lnum }%s%{foldlevel(v:lnum) > foldlevel(v:lnum - 1) ? (foldclosed(v:lnum) == -1 ? "" : "") : " " }'
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
        opt.relativenumber = false
        opt.statuscolumn = '%=%l%s%{foldlevel(v:lnum) > foldlevel(v:lnum - 1) ? (foldclosed(v:lnum) == -1 ? "" : "") : " " }'
        vim.cmd 'redraw'
      end
    end,
  }
)

