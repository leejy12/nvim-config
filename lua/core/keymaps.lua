local opts = { noremap = true, silent = true }

-- set leader key to space
vim.g.mapleader = ' '

-- Disable the spacebar key's default behavior in Normal and Visual modes.
vim.keymap.set({'n', 'v'}, '<Space>', '<Nop>', { silent = true })

-- Set highlight on search, but clear on pressing <Esc> in normal mode.
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'n', 'nzzzv', opts)

-- Vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Buffers
vim.keymap.set('n', '<Tab>'    , ':bnext<CR>'     , opts)
vim.keymap.set('n', '<S-Tab>'  , ':bprevious<CR>' , opts)
vim.keymap.set('n', '<leader>x', ':bdelete!<CR>'  , opts) -- close buffer
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- new buffer

-- Navigate between splits
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- Resize with arrows
vim.keymap.set('n', '<Up>'   , ':resize -2<CR>'         , opts)
vim.keymap.set('n', '<Down>' , ':resize +2<CR>'         , opts)
vim.keymap.set('n', '<Left>' , ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

-- Tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>'  , opts)
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts)
vim.keymap.set('n', '<leader>tn', ':tabn<CR>'    , opts)
vim.keymap.set('n', '<leader>tp', ':tabp<CR>'    , opts)

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP', opts)

-- Delete single key without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- Keep highlight after changing indent
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Go to directory view (fs: filesystem)
-- vim.keymap.set('n', '<leader>fs', vim.cmd.Ex)

-- Telescope find_files (ff: find files)
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')

