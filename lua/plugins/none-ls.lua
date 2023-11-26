local core_settings = require("core.settings")

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
			nls.builtins.code_actions.gitsigns,
		}
		nls.setup({
			sources = sources,
		})
	end,
}
