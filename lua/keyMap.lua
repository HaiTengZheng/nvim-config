-- leader key is null
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

local opt = {
  noremap = true,
  silent = true,
}

-- local variable
local map = vim.api.nvim_set_keymap

-- nvim-tree
-- alt + m open the tree
map("n", "<A-m>", ":NvimTreeToggle<CR>", opt)


-- Telescope
-- search file
map("n", "<C-f>", ":Telescope find_files<CR>", opt)
-- global search
map("n", "<C-g>", ":Telescope live_grep<CR>", opt)
