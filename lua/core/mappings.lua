vim.g.mapleader = " "

-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree focus<CR>')
vim.keymap.set('n', '<leader>fe', ':Neotree float<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree focus git_status<CR>')
vim.keymap.set('n', '<leader>fo', ':Neotree float git_status<CR>')
