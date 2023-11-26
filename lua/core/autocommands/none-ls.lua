local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

-- Based on null-ls documentation.
-- See https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Formatting-on-save#code
-- See https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Formatting-on-save#choosing-a-client-for-formatting
vim.api.nvim_create_autocmd(
  { 'BufWritePre' },
  {
    pattern = '*',
    group = augroup,
    callback = function()
      vim.lsp.buf.format({
        async = false,
        filter = function(client)
          return client.name == 'null-ls'
        end
      })
    end,
  }
)
