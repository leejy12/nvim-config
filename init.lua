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

local plugins = {
  require 'plugins.bufferline',
--  require 'plugins.copilot',
  require 'plugins.gitsigns',
  require 'plugins.lualine',
  require 'plugins.nvim-treesitter',
  require 'plugins.telescope',
  require 'plugins.yazi',
}

-- Use VS Code extensions for LSP and autocomplete.
if not vim.g.vscode then
  table.insert(plugins, require 'plugins.lsp')
  table.insert(plugins, require 'plugins.coc')
end

require("lazy").setup(plugins)
