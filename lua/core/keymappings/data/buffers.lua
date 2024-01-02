return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>b",
      name = "+Buffers",
      mappings = {
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>bl",
          cmd = "<cmd>Telescope buffers prompt_prefix=👓›<CR>",
          opt = {
            desc = "Buffers list",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>bn",
          cmd = "<cmd>bnext<CR>",
          opt = {
            desc = "Next buffer",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>bp",
          cmd = "<cmd>bprev<CR>",
          opt = {
            desc = "Previous buffer",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "]b",
          cmd = "<cmd>bnext<CR>",
          opt = {
            desc = "Next buffer",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "[b",
          cmd = "<cmd>bprev<CR>",
          opt = {
            desc = "Previous buffer",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>bu",
          cmd = "<cmd>bunload<CR>",
          opt = {
            desc = "Unload buffer",
          },
        },
      },
    },
  },
}
