return {
  'neoclide/coc.nvim',
  branch = 'release',
  config = function()
    vim.cmd([[
      highlight! link CocMenuSel PmenuSel
      highlight! link CocMenu Pmenu
    ]])
  end
}
