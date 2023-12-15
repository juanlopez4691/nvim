return {
  groups = {
    enabled = true,
    whichkey = true,
    prefix = "<leader>c",
    name = "+Code",
    mappings = {
      {
        enabled = _G.Settings.plugins_enabled.telescope,
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
