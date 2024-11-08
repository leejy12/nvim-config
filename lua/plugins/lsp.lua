return {
  'neonvim/nvim-lspconfig',
  config = function()
    local lspconfig = require('nvim-lspconfig')
    lspconfig.pyright.setup {}
  end,
}
