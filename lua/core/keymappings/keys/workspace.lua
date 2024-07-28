return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>w",
      name = "+Workspace",
      icon = { icon = "", color = "blue" },
      mappings = {
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>wa",
          cmd = "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>",
          icon = { icon = "󰐕", color = "blue" },
          opt = {
            desc = "Add folder",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>wr",
          cmd = "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>",
          icon = { icon = "󱎘", color = "blue" },
          opt = {
            desc = "Remove folder",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>wl",
          cmd = "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>",
          icon = { icon = "", color = "blue" },
          opt = {
            desc = "List folders",
          },
        },
      },
    },
  },
}
