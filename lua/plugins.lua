return require('packer').startup({function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Vimtex
	use 'lervag/vimtex'

	-- Ultisnips
	use 'SirVer/ultisnips'

	-- color scheme
	use 'ellisonleao/gruvbox.nvim'

	-- nvim-tree
	use {
		'nvim-tree/nvim-tree.lua',
			requires = { 'nvim-tree/nvim-web-devicons' }
	}
	
	-- lualine
	use {
		'nvim-lualine/lualine.nvim',
			requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- telescope, fuzzy search
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
			requires = { 'nvim-lua/plenary.nvim' }
	}

	-- treesitter
	use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

	-- blank indent
	use "lukas-reineke/indent-blankline.nvim"
	
	---------- LSP ----------
	
	-- mason
	use { "williamboman/mason.nvim" }
end,

	-- floating window
	config = {
		display = {
			open_fn = function()
				return require("packer.util").float({ border = "single" })
			end,
		},
	}
})

