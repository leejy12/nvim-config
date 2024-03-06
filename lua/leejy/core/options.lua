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
