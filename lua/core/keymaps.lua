require('core.helpers')

-- Auto indent current empty line.
vim.keymap.set("n", "i", function()
  if #vim.fn.getline "." == 0 then
    return [["_cc]]
  else
    return "i"
  end
end, { expr = true })

-- Navigate window panels.
Map('n', '<C-h>', '<C-w>h')
Map('n', '<C-j>', '<C-w>j')
Map('n', '<C-k>', '<C-w>k')
Map('n', '<C-l>', '<C-w>l')
-- Terminal.
Map('t', '<C-h>', '<cmd>wincmd h<CR>')
Map('t', '<C-j>', '<cmd>wincmd j<CR>')
Map('t', '<C-k>', '<cmd>wincmd k<CR>')
Map('t', '<C-l>', '<cmd>wincmd l<CR>')

-- Resize window panels.
Map('n', '<A-Up>', ':resize +2<CR>')
Map('n', '<A-Down>', ':resize -2<CR>')
Map('n', '<A-Left>', ':vertical resize -2<CR>')
Map('n', '<A-Right>', ':vertical resize +2<CR>')
-- Terminal.
Map('t', '<A-Up>', '<cmd>resize +2<CR>')
Map('t', '<A-Down>', '<cmd>resize -2<CR>')
Map('t', '<A-Left>', '<cmd>vertical resize -2<CR>')
Map('t', '<A-Right>', '<cmd>vertical resize +2<CR>')

-- Move selected lines up/down.
Map('v', '<A-j>', ":m '>+1<CR>gv=gv")
Map('v', '<A-k>', ":m '<-2<CR>gv=gv")
Map('n', '<A-j>', ':m .+1<CR>==')
Map('n', '<A-k>', ':m .-2<CR>==')
Map('i', '<A-j>', '<ESC>:m .+1<CR>==gi')
Map('i', '<A-k>', '<ESC>:m .-2<CR>==gi')

-- Improved cursor movement.
Map('n', 'j', 'gj')
Map('n', 'k', 'gk')

-- Move cursor in insert mode. You cheater!
Map('i', '<A-h>', '<C-o>h')
-- Map('i', '<A-j>', '<C-o>j')
-- Map('i', '<A-k>', '<C-o>k')
Map('i', '<A-l>', '<C-o>l')

-- Indent/Reindent in visual mode.
Map('v', '>', '>gv')
Map('v', '<', '<gv')

-- Remove highligted search results.
Map('n', '<leader>h', ':noh<CR>')

