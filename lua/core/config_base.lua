local cmd = vim.cmd
local g = vim.g

-- Disable Perl provider.
g.loaded_perl_provider = 0

-- Python provider
g.python_host_prog = '/opt/homebrew/bin/python3'
g.python3_host_prog = '/opt/homebrew/bin/python3'

-- Ensure EditorConfig support is enabled.
g.editorconfig = true

-- Set leader key.
g.mapleader = ' '

-- Disable syntax.
cmd [[syntax off]]
-- Disable filetype.
cmd [[filetype plugin indent off]]

local options = {
  -- -- Enable mouse support.
  mouse = 'a',
  -- Copy/paste to system clipboard.
  clipboard = { 'unnamed', 'unnamedplus' },
  -- Enable 24-bit RGB colors.
  termguicolors = true,
  -- Make backspace behave in a sane manner.
  backspace = { 'indent', 'eol,start' },
  -- Line lenght marker at 80 columns.
  colorcolumn = '80',
  -- A comma separated list of options for Insert mode completion.
  completeopt = { 'menu', 'menuone', 'noinsert' },
  -- Disable folding.
  foldenable = false,
  -- Highlight cursor line.
  cursorline = false,
  -- Show line number.
  number = true,
  -- Absolute line numbers.
  relativenumber = false,
  -- Highlight matching parenthesis.
  showmatch = true,
  -- Ignore case letters when search.
  ignorecase = true,
  -- Highlight search results.
  hlsearch = true,
  -- Set incremental search, like modern browsers.
  incsearch = true,
  -- Ignore lowercase for the whole pattern.
  smartcase = true,
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
  -- Enable background buffers.
  hidden = true,
  -- Remember N lines in history.
  history = 1000,
  -- Set global statusline.
  laststatus = 3,
  -- Minimal number of screen lines to keep above and below the cursor.
  scrolloff = 4,
  -- Faster redrawing.
  ttyfast = true,
  regexpengine = 0,
  -- Faster scrolling.
  lazyredraw = true,
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

