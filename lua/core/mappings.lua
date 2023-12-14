vim.g.mapleader = " "

-- NeoTree
vim.keymap.set("n", "<leader>e", ":Neotree focus<CR>")
vim.keymap.set("n", "<leader>fe", ":Neotree float<CR>")
vim.keymap.set("n", "<leader>b", ":Neotree focus buffers<CR>")
vim.keymap.set("n", "<leader>be", ":Neotree float buffers<CR>")
vim.keymap.set("n", "<leader>o", ":Neotree focus git_status<CR>")
vim.keymap.set("n", "<leader>fo", ":Neotree float git_status<CR>")

-- Other
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>x", ":BufferLinePickClose<CR>")
vim.keymap.set("n", "<leader>X", ":BufferLineCloseRight<CR>")
vim.keymap.set("n", "<leader>s", ":BufferLineSortByTabs<CR>")
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- Tabs
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>")
