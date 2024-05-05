return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>T",
      name = "+Tabs",
      mappings = {
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>Ta",
          cmd = "<cmd>tabnew<CR>",
          opt = {
            desc = "Add new tab",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>Th",
          cmd = "<cmd>tabfirst<CR>",
          opt = {
            desc = "First tab",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>Tp",
          cmd = "<cmd>tabprevious<CR>",
          opt = {
            desc = "Previous tab",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>Tn",
          cmd = "<cmd>tabnext<CR>",
          opt = {
            desc = "Next tab",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>Tl",
          cmd = "<cmd>tablast<CR>",
          opt = {
            desc = "Last tab",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>Tx",
          cmd = "<cmd>tabclose<CR>",
          opt = {
            desc = "Close tab",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "[t",
          cmd = "<cmd>tabprevious<CR>",
          opt = {
            desc = "Previous tab",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "]t",
          cmd = "<cmd>tabnext<CR>",
          opt = {
            desc = "Next tab",
          },
        },
      },
    },
  },
}
