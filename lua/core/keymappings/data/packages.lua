return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>L",
      name = "+Lazy",
      mappings = {
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>Ll",
          cmd = "<cmd>Lazy<cr>",
          opt = {
            desc = "Open Lazy",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>Lc",
          cmd = "<cmd>Lazy check<cr>",
          opt = {
            desc = "Check packages",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>Ls",
          cmd = "<cmd>Lazy sync<cr>",
          opt = {
            desc = "Sync packages",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>Lp",
          cmd = "<cmd>Lazy profile<cr>",
          opt = {
            desc = "Profile",
          },
        },
      },
    },
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>M",
      name = "Mason",
      mappings = {
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>M",
          cmd = "<cmd>Mason<cr>",
          opt = {
            desc = "Open Mason",
          },
        },
      },
    },
  },
}
