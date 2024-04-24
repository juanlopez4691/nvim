return {
  {
    "nvim-lua/plenary.nvim",
    lazy = true,
  },
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
  {
    "nvim-telescope/telescope.nvim",
    branch = "master",
    cond = _G.Settings.plugins_enabled.telescope,
    dependencies = require("plugins.telescope.inc.dependencies"),
    cmd = { "Telescope", "Tele" },
    event = "VeryLazy",
    config = function()
      local telescope = require("telescope")
      local telescope_builtin = require("telescope.builtin")
      local actions = require("telescope.actions")
      local extensions = require("plugins.telescope.inc.extensions")
      local pickers = require("plugins.telescope.inc.pickers")

      telescope.setup({
        file_ignore_patterns = {
          ".git/",
        },
        color_devicons = true,
        defaults = {
          path_display = { "smart" },
          initial_mode = "insert",
          selection_caret = "❯ ",
          layout_config = {
            vertical = {
              width = 0.95,
              preview_height = 0.5,
            },
            horizontal = {
              width = 0.95,
              preview_width = 0.5,
            },
          },
          mappings = {
            ["i"] = {
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-n>"] = actions.cycle_history_next,
              ["<C-p>"] = actions.cycle_history_prev,
              ["<C-o>"] = require("telescope.actions.layout").toggle_preview,
            },
            ["n"] = {
              ["q"] = actions.close,
              ["<Esc>"] = actions.close,
              ["<C-[>"] = actions.cycle_previewers_prev,
              ["<C-]>"] = actions.cycle_previewers_next,
              ["<C-o>"] = require("telescope.actions.layout").toggle_preview,
            },
          },
        },
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden",
          "--glob=!.git/",
        },
        extensions = extensions,
        pickers = pickers,
      })

      for extension, _ in pairs(extensions) do
        telescope.load_extension(extension)
      end

      local layout_vertical_config = {
        width = 0.95,
        height = 0.9,
        preview_cutoff = 0,
        prompt_position = "bottom",
      }

      local lsp_preview_settings = {
        jump_type = "never",
        path_display = function(_, path)
          local tail = require("telescope.utils").path_tail(path)
          return string.format("%s (%s)", tail, path)
        end,
        layout_strategy = "vertical",
        layout_config = layout_vertical_config,
      }

      -- Shows a preview window for LSP definitions at cursor position.
      LspDefinitionsAtCursor = function()
        telescope_builtin.lsp_definitions(lsp_preview_settings)
      end

      -- Shows a preview window for LSP references at cursor position.
      LspReferencesAtCursor = function()
        telescope_builtin.lsp_references(lsp_preview_settings)
      end

      -- Shows a preview window for LSP implementations at cursor position.
      LspImplementationsAtCursor = function()
        telescope_builtin.lsp_implementations(lsp_preview_settings)
      end
    end,
  },
}
