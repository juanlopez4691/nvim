return {
  'windwp/nvim-autopairs', -- plugin 1
  event = { 'InsertEnter' },
  config = function()
    local status_ok, npairs = pcall(require, 'nvim-autopairs')

    if not status_ok then
      return
    end

    npairs.setup({})
  end
}
