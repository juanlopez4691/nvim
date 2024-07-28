return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>f",
      name = "+Files",
      icon = { icon = "󰙅", color = "yellow" },
      mappings = {
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>fd",
          cmd = "<cmd>lcd %:h<CR>",
          opt = {
            desc = "Change to dir of current file",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.nvim_tree,
          modes = { "n" },
          key = "<leader>fc",
          cmd = "<cmd>NvimTreeFocus<CR>",
          opt = {
            desc = "Focus on File Tree",
          },
          icon = { icon = "󰙅", color = "yellow" },
        },
        {
          enabled = _G.Settings.plugins_enabled.nvim_tree,
          modes = { "n" },
          key = "<leader>ft",
          cmd = "<cmd>NvimTreeToggle<CR>",
          opt = {
            desc = "File Tree",
          },
          icon = { icon = "󰙅", color = "yellow" },
        },
        {
          enabled = _G.Settings.plugins_enabled.nvim_tree,
          modes = { "n" },
          key = "<leader>fT",
          cmd = "<cmd>NvimTreeFindFileToggle<CR>",
          opt = {
            desc = "File Tree (current file)",
          },
          icon = { icon = "󰙅", color = "yellow" },
        },
        {
          enabled = _G.Settings.plugins_enabled.telescope,
          modes = { "n" },
          key = "<leader>ff",
          cmd = "<cmd>Telescope find_files prompt_prefix=🔭› layout_strategy=flex cwd_only=true<CR>",
          opt = {
            desc = "Find files",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.telescope,
          modes = { "n" },
          key = "<leader>fo",
          cmd = "<cmd>Telescope oldfiles prompt_prefix=💾› layout_strategy=flex cwd_only=true<CR>",
          opt = {
            desc = "Recent files",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.telescope,
          modes = { "n" },
          key = "<leader>fr",
          cmd = "<cmd>Telescope resume<CR>",
          opt = {
            desc = "Resume Telescope picker",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>fw",
          cmd = "<cmd>write<cr>",
          opt = {
            desc = "Save",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>fW",
          cmd = function()
            local auto_format = _G.Settings.format_on_save

            _G.Settings.format_on_save = false
            vim.cmd("write")
            _G.Settings.format_on_save = auto_format
          end,
          opt = {
            desc = "Save without formatting",
          },
        },
      },
    },
  },
}
