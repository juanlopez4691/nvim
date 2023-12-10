return {
  groups = {
    whichkey = true,
    prefix = "<leader>c",
    name = "+Code",
    mappings = {
      {
        modes = { "n" },
        key = "<leader>ut",
        cmd = "<cmd>Telescope undo<CR>",
        opt = {
          desc = "Undo tree",
        },
      },
    },
  },
}
