require("leejy.remap")

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.showmatch = true

vim.opt.syntax = "on"

vim.opt.mouse = "a"

vim.opt.ruler = true

vim.g.lightline = {
  active = {
    left = {
      { 'mode', 'paste' },
      { 'gitbranch', 'readonly', 'filename', 'modified' },
    },
  },
  component_function = {
    gitbranch = 'gitbranch#name',
  },
}

vim.cmd([[autocmd VimLeave * set guicursor=n-v-c:ver100-blinkwait530-blinkon530]])
