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
    end, { expr = true, silent = true, desc = "Codeium: Accept" })

    vim.keymap.set("i", "<M-]>", function()
      return vim.fn["codeium#CycleCompletions"](1)
    end, { expr = true, silent = true, desc = "Codeium: Next completion" })

    vim.keymap.set("i", "<M-[>", function()
      return vim.fn["codeium#CycleCompletions"](-1)
    end, { expr = true, silent = true, desc = "Codeium: Previous completion" })

    vim.keymap.set("i", "<C-]>", function()
      return vim.fn["codeium#Clear"](-1)
    end, { expr = true, silent = true, desc = "Codeium: Clears completions" })
  end,
}
