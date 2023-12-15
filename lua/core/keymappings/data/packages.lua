return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>p",
      name = "+Packages",
      mappings = {
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>pl",
          cmd = "<cmd>Lazy<cr>",
          opt = {
            desc = "Open Lazy",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>pc",
          cmd = "<cmd>Lazy check<cr>",
          opt = {
            desc = "Check packages",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>ps",
          cmd = "<cmd>Lazy sync<cr>",
          opt = {
            desc = "Sync packages",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>pp",
          cmd = "<cmd>Lazy profile<cr>",
          opt = {
            desc = "Profile",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>cM",
          cmd = "<cmd>Mason<cr>",
          opt = {
            desc = "Open Mason",
          },
        },
      },
    },
  },
}
