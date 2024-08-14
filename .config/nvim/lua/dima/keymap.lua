vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', '<leader>j', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>cprev<CR>zz')

vim.keymap.set('n', '<c-j>', '<c-w><c-j>')
vim.keymap.set('n', '<c-k>', '<c-w><c-k>')
vim.keymap.set('n', '<c-l>', '<c-w><c-l>')
vim.keymap.set('n', '<c-h>', '<c-w><c-h>')

vim.keymap.set('n', 'L', 'gT')
vim.keymap.set('n', 'H', 'gt')

vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')
vim.keymap.set('n', '<leader>D', '<cmd>DBUIToggle<CR>')
