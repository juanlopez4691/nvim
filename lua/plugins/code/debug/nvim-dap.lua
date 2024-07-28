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
    local set_hl = function(name, opts)
      vim.api.nvim_set_hl(0, name, opts)
    end

    set_hl("DapStoppedLine", { default = true, link = "Visual" })
    set_hl("DapBreakpoint", { ctermbg = 0, fg = "#e31010", bg = "#31353f" })
    set_hl("DapBreakpointCondition", { ctermbg = 0, fg = "#78bffd", bg = "#31353f" })
    set_hl("DapBreakpointStopped", { ctermbg = 0, fg = "#ffc72b", bg = "#31353f" })
    set_hl("DapBreakpointRejected", { ctermbg = 0, fg = "#f88080", bg = "#31353f" })
    set_hl("DapLogPoint", { ctermbg = 0, fg = "#d6a4fc", bg = "#31353f" })

    for name, sign in pairs(icons.dap) do
      if sign then
        if type(sign) ~= "table" then
          sign = { sign }
        end
        vim.fn.sign_define(
          "Dap" .. name,
          { text = sign[1], texthl = sign[2] or "DiagnosticInfo", linehl = sign[3], numhl = sign[3] }
        )
      end
    end
  end,
}
