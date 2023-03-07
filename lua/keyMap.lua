-- leader key is null
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

local opt = { noremap = true, silent = true }

-- local variable
--local map = vim.api.nvim_set_keymap
local map = vim.keymap.set

-- nvim-tree
-- alt + m open the tree
map('n', "<A-m>", ":NvimTreeToggle<CR>", opt)


-- Telescope
map('n', "<C-f>", ":Telescope find_files<CR>", opt)
map('n', "<C-g>", ":Telescope live_grep<CR>", opt)
map('n', '<C-b>', ":Telescope buffers<CR>", opt)
map('n', '<C-h>', ":Telescope help_tags<CR>", opt)

-- nvim-lsp
-- vim.diagnostic
map('n', '<space>e', vim.diagnostic.open_float, opt)
map('n', '[d', vim.diagnostic.goto_prev, opt)
map('n', ']d', vim.diagnostic.goto_next, opt)
map('n', '<space>q', vim.diagnostic.setloclist, opt)

-- luasnips
-- choice nodes
-- set keybinds for both INSERT and VISUAL.
map("i", "<C-n>", "<Plug>luasnip-next-choice", opt)
map("s", "<C-n>", "<Plug>luasnip-next-choice", opt)
map("i", "<C-p>", "<Plug>luasnip-prev-choice", opt)
map("s", "<C-p>", "<Plug>luasnip-prev-choice", opt)
