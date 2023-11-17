local searchReplace = function ()
  require('spectre').open()
end

return {
  {
    modes = { 'n' },
    key = '<leader>sr',
    cmd = searchReplace,
    opt = {
      desc = 'Search and replace in files',
    },
  },
}

