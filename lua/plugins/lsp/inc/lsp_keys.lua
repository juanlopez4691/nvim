return {
  {
    key = "K",
    desc = "Show hover info",
    cmd = "<cmd>lua vim.lsp.buf.hover()<cr>",
  },
  {
    key = "gd",
    desc = "Go to definition",
    cmd = "<cmd>lua vim.lsp.buf.definition()<cr>",
  },
  {
    key = "gD",
    desc = "Go to declaration",
    cmd = "<cmd>lua vim.lsp.buf.declaration()<cr>",
  },
  {
    key = "gi",
    desc = "Go to implementation",
    cmd = "<cmd>lua vim.lsp.buf.implementation()<cr>",
  },
  {
    key = "go",
    desc = "Go to type definition",
    cmd = "<cmd>lua vim.lsp.buf.type_definition()<cr>",
  },
  {
    key = "gR",
    desc = "Show references",
    cmd = "<cmd>lua vim.lsp.buf.references()<cr>",
  },
  {
    key = "gh",
    desc = "Show signature help",
    cmd = "<cmd>lua vim.lsp.buf.signature_help()<cr>",
  },
  {
    key = "gr",
    desc = "Rename",
    cmd = "<cmd>lua vim.lsp.buf.rename()<cr>",
  },
  {
    key = "ga",
    desc = "Code actions",
    cmd = "<cmd>lua vim.lsp.buf.code_action()<cr>",
  },
  {
    key = "gs",
    desc = "Restart LSP",
    cmd = "<cmd>LspRestart<cr>",
  },
}
