return {
  {
    'nvim-lua/plenary.nvim',
    config = function ()
      require'plenary.filetype'.add_file('filetypes')
    end
  },
  { 'nvim-tree/nvim-web-devicons' },
  -- Telescope extensions.
  { 'debugloop/telescope-undo.nvim' },
  { 'nvim-telescope/telescope-media-files.nvim' },
  { 'nvim-telescope/telescope-live-grep-args.nvim' },
  { 'nvim-telescope/telescope-fzf-native.nvim' },
}
