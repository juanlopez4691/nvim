return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>P",
      name = "+Packages",
      icon = { icon = "", color = "purple" },
      mappings = {
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>Pl",
          cmd = "<cmd>Lazy<cr>",
          icon = { icon = "󰒲", color = "purple" },
          opt = {
            desc = "Lazy",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>Pm",
          cmd = "<cmd>Mason<cr>",
          icon = { icon = "󱊍", color = "purple" },
          opt = {
            desc = "Mason",
          },
        },
      },
    },
  },
}
