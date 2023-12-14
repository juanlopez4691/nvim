return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  cond = _G.Settings.plugins_enabled.telescope,
  dependencies = require("plugins.telescope.dependencies"),
  -- cmd = 'Telescope',
  -- event = { 'BufReadPre', 'BufNewFile' },
  event = "VeryLazy",
  config = function()
    local telescope = require("telescope")
    local telescope_builtin = require("telescope.builtin")
    local actions = require("telescope.actions")
    local extensions = require("plugins.telescope.extensions")
    local pickers = require("plugins.telescope.pickers")
    local pretty_pickers = require("plugins.telescope.pretty_pickers")

    telescope.setup({
      file_ignore_patterns = {},
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
          },
          ["n"] = {
            ["q"] = actions.close,
            ["<C-[>"] = actions.cycle_previewers_prev,
            ["<C-]>"] = actions.cycle_previewers_next,
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

    -- Global functions used in keymappings
    FindFiles = function()
      pretty_pickers.prettyFilesPicker({
        picker = "find_files",
        options = {
          prompt_prefix = "🔭›",
          layout_strategy = "flex",
          layout_config = layout_vertical_config,
        },
      })
    end

    TelescopeOldFiles = function()
      pretty_pickers.prettyFilesPicker({
        picker = "oldfiles",
        options = {
          prompt_prefix = "💾›",
          layout_strategy = "flex",
          layout_config = layout_vertical_config,
        },
      })
    end

    TelescopeLiveGrep = function()
      pretty_pickers.prettyGrepPicker({
        picker = "live_grep",
        options = {
          prompt_prefix = "🔍›",
          layout_strategy = "flex",
          layout_config = layout_vertical_config,
        },
      })
    end

    TelescopeLiveGrepArgs = function()
      pretty_pickers.prettyGrepPicker({
        picker = "live_grep_args",
        options = {
          prompt_prefix = "🔍›",
          layout_strategy = "flex",
          layout_config = layout_vertical_config,
        },
      })
    end

    TelescopeGrepString = function()
      pretty_pickers.prettyGrepPicker({
        picker = "grep_string",
        options = {
          prompt_prefix = "🔍›",
          layout_strategy = "flex",
          layout_config = layout_vertical_config,
        },
      })
    end

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
}
