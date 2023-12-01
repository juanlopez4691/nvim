local phpcs_exec = "phpcs"
local phpcbf_exec = "phpcbf"
local vendor_path = "./vendor/bin/"

if vim.fn.executable(vendor_path .. phpcs_exec) == 1 then
  phpcs_exec = vendor_path .. phpcs_exec
end

if vim.fn.executable(vendor_path .. phpcbf_exec) == 1 then
  phpcbf_exec = vendor_path .. phpcbf_exec
end

return {
  "nvimtools/none-ls.nvim",
  cond = _G.Settings.plugins_enabled.none_ls,
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local nls = require("null-ls")

    local sources = {
      nls.builtins.formatting.stylua,
      nls.builtins.formatting.prettierd,
      nls.builtins.diagnostics.eslint_d,
      nls.builtins.diagnostics.stylelint,
      nls.builtins.formatting.rustywind,
      nls.builtins.completion.spell,
      nls.builtins.diagnostics.php,
      nls.builtins.diagnostics.phpcs.with({
        command = phpcs_exec,
      }),
      nls.builtins.diagnostics.phpstan,
      nls.builtins.formatting.phpcbf.with({
        command = phpcbf_exec,
      }),
      nls.builtins.code_actions.gitsigns,
    }
    nls.setup({
      sources = sources,
    })
  end,
}
