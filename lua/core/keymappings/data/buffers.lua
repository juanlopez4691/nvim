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
      },
    },
  },
}
