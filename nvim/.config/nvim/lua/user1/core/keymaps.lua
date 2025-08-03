-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("t", "<C-CR>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) 
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

vim.keymap.set('n', '<leader>bn', ':bnext<CR>')
vim.keymap.set('n', '<leader>bp', ':bprev<CR>')
vim.keymap.set('n', '<leader>bd', ':bdelete<CR>')
vim.keymap.set('n', '<leader>bl', ':buffers<CR>')

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split horizontally" }) 
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make windows equal size" }) 
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close window" }) 
keymap.set('n', '<leader>wh', '<C-w>h', { desc = 'Left window' })
keymap.set('n', '<leader>wj', '<C-w>j', { desc = 'Down window' })
keymap.set('n', '<leader>wk', '<C-w>k', { desc = 'Up window' })
keymap.set('n', '<leader>wl', '<C-w>l', { desc = 'Right window' })
keymap.set('n', '<leader>ww', '<C-w><C-w>', { desc = 'Iterate windows' })
keymap.set('n', '<leader>wH', '<C-w>H', { desc = 'Bring window left' })
keymap.set('n', '<leader>wJ', '<C-w>J', { desc = 'Bring window down' })
keymap.set('n', '<leader>wK', '<C-w>K', { desc = 'Bring window up' })
keymap.set('n', '<leader>wL', '<C-w>L', { desc = 'Bring window right' })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) 
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) 
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) 
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) 
keymap.set("n", "<leader>tb", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) 

-- quickfix list
-- these commands are also accessible via [q ]q
keymap.set('n', '<M-j>', '<cmd>cnext<CR>')
keymap.set('n', '<M-k>', '<cmd>cprev<CR>')
