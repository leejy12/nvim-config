-- set leader key to space
vim.g.mapleader = " "

-- Go to directory view (fs: filesystem)
vim.keymap.set("n", "<leader>fs", vim.cmd.Ex)

-- Telescope find_files (ff: find files)
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
