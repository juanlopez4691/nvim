return {
  "mfussenegger/nvim-dap",
  cond = _G.Settings.plugins_enabled.nvim_dap,
  event = { "BufReadPre" },
  dependencies = {
    { "rcarriga/nvim-dap-ui" },
    { "theHamsta/nvim-dap-virtual-text" },
    { "jay-babu/mason-nvim-dap.nvim" },
  },
  config = function()
    local icons = require("core.icons")

    vim.api.nvim_set_hl(0, "DapStoppedLine", { default = true, link = "Visual" })

    for name, sign in pairs(icons.dap) do
      sign = type(sign) == "table" and sign or { sign }
      vim.fn.sign_define(
        "Dap" .. name,
        { text = sign[1], texthl = sign[2] or "DiagnosticInfo", linehl = sign[3], numhl = sign[3] }
      )
    end
  end,
}
