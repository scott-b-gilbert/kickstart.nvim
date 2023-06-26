-- Enable telescope emoji
pcall(require('telescope').load_extension, 'emoji')

-- turn on relative numbers 
vim.o.relativenumber = true
-- turn off swapfile 
vim.g.swap = true

-- For a cleaner netrw 
-- vim.g.netrw_banner = 0
-- vim.g.netrw_liststyle = 3 
-- vim.g.netrw_browse_split = 4 
-- vim.g.netrw_altv = 1 
-- vim.g.netrw_winsize = 25 

-- -- tabs 
-- vim.o.tabstop = 4
-- vim.o.shiftwidth = 4
-- vim.o.softtabstop = 4
-- vim.o.expandtab = true

-- escape from terminal mode 
vim.keymap.set({ 't' }, '<leader><esc>', '<C-\\><C-N>', {silent = true})

-- jj/jk for insert to normal mode 
vim.keymap.set({ 'i' }, 'jk', '<ESC>', {silent = true})
vim.keymap.set({ 'i' }, 'jj', '<ESC>', {silent = true})

-- open the explorer fast 
vim.keymap.set({'n'}, '<leader><leader>e', vim.cmd.Ex, {silent = true})

-- move entire line up and down
vim.keymap.set({'v'}, 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set({'v'}, 'J', ":m '>+1<CR>gv=gv")

-- keep the cursor at the same place when using J 
vim.keymap.set({'n'}, 'J', "mzJ`z", {silent = true })

-- keep the cursor in the middle of the page 
vim.keymap.set({'n'}, '<C-d>', '<C-d>zz', {silent = true })
vim.keymap.set({'n'}, '<C-u>', '<C-u>zz', {silent = true })
vim.keymap.set({'n'}, 'n', 'nzzzv', {silent = true })
vim.keymap.set({'n'}, 'N', 'Nzzzv', {silent = true })

-- preserve the current yank buffer (don't swap with whatever pasting over)
vim.keymap.set({'x'}, '<leader>p', "\"_dP", {silent = true })

-- move between buffers 
vim.keymap.set({'n'}, "<tab>", ":bn<cr>", {silent = true})
vim.keymap.set({'n'}, "<S-tab>", ":bp<cr>", {silent = true})

-- stop Q from effing things up 
vim.keymap.set({'n'}, "Q", "<nop>", {silent = true})

-- yank into the system clipboard 
vim.keymap.set({'n'}, "<leader>y", "\"+y", {silent = true})
vim.keymap.set({'v'}, "<leader>y", "\"+y", {silent = true})
vim.keymap.set({'n'}, "<leader>Y", "\"+Y", {silent = true})

-- move between windows
vim.keymap.set({'n'}, "<C-h>", "<C-w>h", {silent = true})
vim.keymap.set({'n'}, "<C-j>", "<C-w>j", {silent = true})
vim.keymap.set({'n'}, "<C-k>", "<C-w>k", {silent = true})
vim.keymap.set({'n'}, "<C-l>", "<C-w>l", {silent = true})

-- reload files
vim.keymap.set({'n'}, "<leader><leader>s", "<cmd>source ~/.config/nvim/after/plugin/luasnip.lua<cr>", {silent = true})
vim.keymap.set({'n'}, "<leader><leader>i", "<cmd>source ~/.config/nvim/init.lua<cr>", {silent = true})

-- toggle inline git blame 
vim.keymap.set({'n'}, "<leader><leader>gb", "<cmd>GitBlameToggle<cr>", {silent = true})

-- luasnip 
vim.api.nvim_set_keymap("i", "<C-n>", "<Plug>luasnip-next-choice", {})
vim.api.nvim_set_keymap("s", "<C-n>", "<Plug>luasnip-next-choice", {})
vim.api.nvim_set_keymap("i", "<C-p>", "<Plug>luasnip-prev-choice", {})
vim.api.nvim_set_keymap("s", "<C-p>", "<Plug>luasnip-prev-choice", {})

-- insert blank line below ignoring any comments
vim.keymap.set({'n'}, "<leader>o", "o<esc><S-v>s", {silent = true})
