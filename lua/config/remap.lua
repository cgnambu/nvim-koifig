-- Set leader key to space
vim.g.mapleader = " "
-- Set Leader e to open file explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Set navigation keys to Ctrl + vimNavigation (Moves between vim windows)
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Set window resizing keys to Ctrl + arrow keys
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize +2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- End debugging
vim.keymap.set('n', '<Leader>d', ":DapTerminate<cr>", opts)
