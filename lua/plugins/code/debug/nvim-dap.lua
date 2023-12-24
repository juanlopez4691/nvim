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

    vim.api.nvim_set_hl(0, "DapBreakpoint", { ctermbg = 0, fg = "#e31010", bg = "#31353f" })
    vim.api.nvim_set_hl(0, "DapBreakpointCondition", { ctermbg = 0, fg = "#78bffd", bg = "#31353f" })
    vim.api.nvim_set_hl(0, "DapBreakpointStopped", { ctermbg = 0, fg = "#ffc72b", bg = "#31353f" })
    vim.api.nvim_set_hl(0, "DapBreakpointRejected", { ctermbg = 0, fg = "#f88080", bg = "#31353f" })
    vim.api.nvim_set_hl(0, "DapLogPoint", { ctermbg = 0, fg = "#d6a4fc", bg = "#31353f" })

    for name, sign in pairs(icons.dap) do
      sign = type(sign) == "table" and sign or { sign }
      vim.fn.sign_define(
        "Dap" .. name,
        { text = sign[1], texthl = sign[2] or "DiagnosticInfo", linehl = sign[3], numhl = sign[3] }
      )
    end
  end,
}
