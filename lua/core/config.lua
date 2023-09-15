local fn = vim.fn
local g = vim.g

-- Disable Perl provider.
g.loaded_perl_provider = 0

-- Python provider
g.python_host_prog = '/opt/homebrew/bin/python3'
g.python3_host_prog = '/opt/homebrew/bin/python3'

-- Set leader key.
g.mapleader = ' '

-- Disable netrw.
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- Ensure EditorConfig support is enabled.
g.editorconfig = true

-- Ensure undo dir exists.
local undodir = fn.stdpath('data') .. '/undodir'
if fn.isdirectory(undodir) ~= 0 then
  fn.mkdir(undodir, 'p')
end

local options = {
  -- Enable mouse support.
  mouse = 'a',
  -- Copy/paste to system clipboard.
  -- clipboard = 'unnamedplus',
  -- Enable 24-bit RGB colors.
  termguicolors = true,
  -- Line lenght marker at 80 columns.
  colorcolumn = '80',
  -- A comma separated list of options for Insert mode completion.
  completeopt = { 'menu', 'menuone', 'noselect', 'noinsert' },
  -- Enable folding.
  foldmethod = 'manual',
  foldlevelstart = 999,
  foldcolumn = 'auto:5',
  -- Highlight cursor line.
  cursorline = true,
  -- Show line number.
  number = true,
  -- Relative line numbers.
  relativenumber = true,
  -- Highlight matching parenthesis.
  showmatch = true,
  -- Ignore lowercase for the whole pattern.
  smartcase = true,
  -- Ignore case letters when search.
  ignorecase = true,
  -- Horizontal split to the bottom.
  splitbelow = true,
  -- Vertical split to the right.
  splitright = true,
  -- Don't use swapfile.
  swapfile = false,
  -- Use spaces instead of tabs.
  expandtab = true,
  -- Shift 2 spaces when tab.
  shiftwidth = 2,
  -- 1 tab == 2 spaces.
  tabstop = 2,
  -- Set undo directory.
  undodir = undodir,
  -- Enable/disable undo file creation.
  undofile = true,
  -- Enable background buffers.
  hidden = true,
  -- Remember N lines in history.
  history = 1000,
  -- Set global statusline.
  laststatus = 3,
  -- Minimal number of screen lines to keep above and below the cursor.
  scrolloff = 4,
  -- Faster scrolling
  lazyredraw = true,
  -- ms to wait for trigger an event.
  updatetime = 250,
  -- Max column for syntax highlight.
  synmaxcol = 240,
  -- When set case is ignored when completing file names and directories.
  wildignorecase = true,
  wildmode = 'full',
  -- No line wrapping.
  wrap = false,
  -- Wrap on word boundary.
  linebreak = true,
  -- Autoindent new lines.
  smartindent = true,
  autoindent = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Line wrap cursor movement.
vim.cmd "set whichwrap+=<,>,[,],h,l"
