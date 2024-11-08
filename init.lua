require 'core.options'
require 'core.keymaps'

-- set cursor blink on exit
vim.cmd([[autocmd VimLeave * set guicursor=n-v-c:ver100-blinkwait530-blinkon530]])

------------------- Lazy -------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
  require 'plugins.lualine',
  'neovim/nvim-lspconfig',
  { 'nvim-telescope/telescope.nvim', dependencies = { 'nvim-lua/plenary.nvim' }},
  'nvim-treesitter/nvim-treesitter',
  -- "nvim-tree/nvim-tree.lua"
}
