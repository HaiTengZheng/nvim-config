-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
	disable_netrw = true,
	filters = {
        dotfiles = true,
    },
	view = {
		width = 40,
	}
})
