return {
  "theHamsta/nvim-dap-virtual-text",
  lazy = true,
  opts = {},
  config = function()
    require("nvim-dap-virtual-text").setup({
      only_first_definition = false,
      all_references = true,
      clear_on_continue = true,
    })
    vim.g.dap_virtual_text = true
  end,
}
