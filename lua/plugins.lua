return require('packer').startup({function(use)
	-- Packer can manage itself
	use { 'wbthomason/packer.nvim' }

	-- Vimtex
	use { 'lervag/vimtex' }

	-- Ultisnips
	-- use { 'SirVer/ultisnips' }
	
	-- luasnips
	use { 'L3MON4D3/LuaSnip', tag = 'v<CurrentMajor>.*' }


	-- color scheme
	use { 'ellisonleao/gruvbox.nvim' }

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
	use { 'lukas-reineke/indent-blankline.nvim' }
	
	---------- LSP ----------
	
	-- mason
	use { 'williamboman/mason.nvim' }

	-- mason-lsp
	use { 'williamboman/mason-lspconfig.nvim' }

	-- lsp
	use {'neovim/nvim-lspconfig' }

	--- dap
	use { 'mfussenegger/nvim-dap' }

	--- cmp
	use { 'hrsh7th/cmp-nvim-lsp' }
	use { 'hrsh7th/cmp-buffer' }
	use { 'hrsh7th/cmp-path' }
	use { 'hrsh7th/cmp-cmdline' }
	use { 'hrsh7th/nvim-cmp' }
	use { 'saadparwaiz1/cmp_luasnip' }

	
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

