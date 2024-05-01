-- Sets custom key mappings
local function do_on_attach(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return {
      desc = "nvim-tree: " .. desc,
      buffer = bufnr,
      noremap = true,
      silent = true,
      nowait = true,
    }
  end

  -- Default mappings.
  api.config.mappings.default_on_attach(bufnr)

  -- Custom mappings.
  local mappings = {
    ["l"] = { api.node.open.edit, opts("Open") },
    ["o"] = { api.node.open.edit, opts("Open") },
    ["<CR>"] = { api.node.open.edit, opts("Open") },
    ["v"] = { api.node.open.vertical, opts("Open: Vertical Split") },
    ["h"] = { api.node.navigate.parent_close, opts("Close Directory") },
    ["C"] = { api.tree.change_root_to_node, opts("CD") },
    ["u"] = { api.node.navigate.parent, opts("Parent Directory") },
  }
  for key, value in pairs(mappings) do
    vim.keymap.set("n", key, value[1], value[2])

    -- Only preview files, expand/collapse directories.
    local preview = require("nvim-tree-preview")

    vim.keymap.set("n", "<Tab>", function()
      local ok, node = pcall(api.tree.get_node_under_cursor)
      if ok and node then
        if node.type == "directory" then
          api.node.open.edit()
        else
          preview.node(node, { toggle_focus = true })
        end
      end
    end, opts("Preview"))
  end
end

-- Init plugin nvim-tree.
return {
  "nvim-tree/nvim-tree.lua",
  cond = _G.Settings.plugins_enabled.nvim_tree,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-tree/nvim-web-devicons" },
    { "b0o/nvim-tree-preview.lua" },
  },
  -- tag = 'nightly',
  cmd = { "NvimTreeToggle", "NvimTreeOpen", "NvimTreeFocus", "NvimTreeFindFileToggle" },
  config = function()
    local git_icons = require("core.icons").git

    require("nvim-tree").setup({
      on_attach = do_on_attach,
      disable_netrw = true,
      hijack_netrw = true,
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      sort_by = "case_sensitive",
      update_focused_file = {
        enable = true,
        update_root = true,
        update_cwd = true,
        ignore_list = { "help" },
      },
      view = {
        adaptive_size = true,
      },
      renderer = {
        full_name = true,
        group_empty = true,
        special_files = {
          ".env",
          "Cargo.toml",
          ".gitignore",
          "Makefile",
          "README.md",
          "readme.md",
        },
        indent_markers = {
          enable = true,
          icons = {
            corner = "╰╴",
          },
        },
        icons = {
          git_placement = "signcolumn",
          show = {
            file = true,
            folder = true,
            folder_arrow = false,
            git = true,
          },
          glyphs = {
            git = {
              unstaged = git_icons.FileUnstaged,
              staged = git_icons.FileStaged,
              unmerged = git_icons.FileUnmerged,
              renamed = git_icons.FileRenamed,
              untracked = git_icons.FileUntracked,
              deleted = git_icons.FileDeleted,
              ignored = git_icons.FileIgnored,
            },
          },
        },
      },
      diagnostics = {
        enable = true,
        show_on_dirs = true,
      },
      filters = {
        dotfiles = true,
        custom = {
          "^.git$",
        },
      },
    })
  end,
}
