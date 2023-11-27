return {
	groups = {
		{
			whichkey = true,
			prefix = "<leader>c",
			name = "+Code",
			mappings = {
				{
					modes = { "n" },
					key = "<leader>cf",
					cmd = "<cmd>lua vim.lsp.buf.format({ async = false })<cr>",
					opt = {
						desc = "Format code",
					},
				},
			},
		},
	},
}
