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
  -- Make backspace behave in a sane manner.
  backspace = { 'indent', 'eol,start' },
  -- Line lenght marker at 80 columns.
  colorcolumn = '80',
  -- A comma separated list of options for Insert mode completion.
  completeopt = { 'menu', 'menuone', 'noinsert' },
  -- Enable folding.
  foldmethod = 'syntax',
  foldenable = true,
  foldlevel = 99,
  foldlevelstart = 99,
  foldcolumn = '1',
  foldnestmax = 4,
  fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]],
  statuscolumn = '%=%l%s%{foldlevel(v:lnum) > foldlevel(v:lnum - 1) ? (foldclosed(v:lnum) == -1 ? "" : "") : " " }',
  -- Highlight cursor line.
  cursorline = true,
  -- Show line number.
  number = true,
  -- Relative line numbers.
  relativenumber = true,
  -- Set space for signs in status column.
  signcolumn = 'yes:1',
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
  -- Faster redrawing.
  ttyfast = true,
  regexpengine = 0,
  -- ms to wait for trigger an event.
  updatetime = 250,
  -- Max column for syntax highlight.
  synmaxcol = 250,
  -- When set case is ignored when completing file names and directories.
  wildignorecase = true,
  wildmode = 'full',
  -- Set char to start wildcard expansion in command line for macros and mappings.
  wildcharm=('\t'):byte(),
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
