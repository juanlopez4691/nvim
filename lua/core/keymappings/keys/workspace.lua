return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>w",
      name = "+Workspace",
      mappings = {
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>wa",
          cmd = "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>",
          opt = {
            desc = "Add workspace folder",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>wr",
          cmd = "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>",
          opt = {
            desc = "Remove workspace folder",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>wl",
          cmd = "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>",
          opt = {
            desc = "List workspace folders",
          },
        },
      },
    },
  },
}
