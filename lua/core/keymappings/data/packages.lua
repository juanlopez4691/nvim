return {
  groups = {
    {
      whichkey = true,
      prefix = "<leader>P",
      name = "+Packages",
      mappings = {
        {
          modes = { "n" },
          key = "<leader>Pl",
          cmd = "<cmd>Lazy<cr>",
          opt = {
            desc = "Open Lazy",
          },
        },
        {
          modes = { "n" },
          key = "<leader>Pc",
          cmd = "<cmd>Lazy check<cr>",
          opt = {
            desc = "Check packages",
          },
        },
        {
          modes = { "n" },
          key = "<leader>Ps",
          cmd = "<cmd>Lazy sync<cr>",
          opt = {
            desc = "Sync packages",
          },
        },
        {
          modes = { "n" },
          key = "<leader>Pp",
          cmd = "<cmd>Lazy profile<cr>",
          opt = {
            desc = "Profile",
          },
        },
        {
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
