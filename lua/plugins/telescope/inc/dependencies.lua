return {
  { "nvim-telescope/telescope-ui-select.nvim" },
  {
    "nvim-lua/plenary.nvim",
    config = function()
      require("plenary.filetype").add_file("filetypes")
    end,
  },
  { "nvim-tree/nvim-web-devicons" },
  -- Telescope extensions.
  { "debugloop/telescope-undo.nvim" },
  { "nvim-telescope/telescope-media-files.nvim" },
  {
    "nvim-telescope/telescope-live-grep-args.nvim",
    version = "^1.0.0",
    lazy = true,
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
    lazy = true,
  },
}
