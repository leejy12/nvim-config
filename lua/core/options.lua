-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.number         = true -- Show line numbers
vim.opt.relativenumber = true -- Set relative number lines

vim.opt.tabstop    = 4    -- 4 spaces for tabs
vim.opt.shiftwidth = 4    -- 4 spaces for indent width
vim.opt.expandtab  = true -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting new one

vim.opt.wrap = false -- Turn off line wrapping

vim.opt.scrolloff = 4 -- Minimal number of screen lines to keep above and below the cursor

vim.opt.ignorecase = true -- Case-insensitive searching UNLESS \C or capital in search

