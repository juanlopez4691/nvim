return {
  "Exafunction/codeium.vim",
  cond = _G.Settings.plugins_enabled.codeium,
  event = "InsertEnter",
  build = ":Codeium Auth",
  branch = "main",
  config = function()
    -- Press <C-g> to accept Codeium suggestion.
    vim.keymap.set("i", "<C-g>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true, silent = true })
  end,
}
