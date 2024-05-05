local augroup = vim.api.nvim_create_augroup("nvim_tree", {})

-- Open NvimTree when entering a directory
vim.api.nvim_create_autocmd("VimEnter", {
  group = augroup,
  callback = function(event)
    -- buffer is a directory
    local directory = vim.fn.isdirectory(event.file) == 1

    if not directory then
      return
    end

    -- change to the directory
    vim.cmd.cd(event.file)

    -- open the tree
    require("nvim-tree.api").tree.open()

    -- No line numbers in NvimTree
    vim.opt.statuscolumn = ""
  end,
})
