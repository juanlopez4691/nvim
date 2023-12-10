return {
  groups = {
    {
      whichkey = true,
      prefix = "<leader>b",
      name = "+Buffers",
      mappings = {
        {
          modes = { "n" },
          key = "<leader>bl",
          cmd = "<cmd>Telescope buffers prompt_prefix=👓›<CR>",
          opt = {
            desc = "Buffers list",
          },
        },
        {
          modes = { "n" },
          key = "<leader>bn",
          cmd = "<cmd>bnext<CR>",
          opt = {
            desc = "Next buffer",
          },
        },
        {
          modes = { "n" },
          key = "<leader>bp",
          cmd = "<cmd>bprev<CR>",
          opt = {
            desc = "Previous buffer",
          },
        },
        {
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
