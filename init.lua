------------------- Options -------------------
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1

-- line numbers
vim.opt.number         = true
vim.opt.relativenumber = true

-- tabs & indentation
vim.opt.tabstop    = 4    -- 4 spaces for tabs
vim.opt.shiftwidth = 4    -- 4 spaces for indent width
vim.opt.expandtab  = true -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
vim.opt.wrap = false

-- set cursor blink on exit
vim.cmd([[autocmd VimLeave * set guicursor=n-v-c:ver100-blinkwait530-blinkon530]])

------------------- Keymaps -------------------
-- set leader key to space
vim.g.mapleader = " "

-- Go to directory view (fs: filesystem)
vim.keymap.set("n", "<leader>fs", vim.cmd.Ex)

-- Telescope find_files (ff: find files)
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")

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

require("lazy").setup({
  "itchyny/lightline.vim",
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" }},
  "nvim-treesitter/nvim-treesitter",
  "nvim-tree/nvim-tree.lua"
})

require("nvim-tree").setup()
