local packer = require('packer')

return packer.startup(function(use)
	-- Aqui agregas los plugins que deseas utiliza, por ejemplo:
	-- use {'nombre_del_plugin'}
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for files icons
		},
		tag = 'nightly' -- optional, updated every week. 
	}
	use { 'tpope/vim-fugitive' }
	use { 
		'folke/which-key.nvim',
		config = function()
			vim.o.timeout = ture
			vim.o.timeoutlen = 300
			require("which-key").setup {

			}
		end
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use { 'wakatime/vim-wakatime' }


	-- Instalación de Servicios de lenguajes
	use { 'neovim/nvim-lspconfig' } -- Language Server Protocol (LSP)

	-- Instalación de temas
	use {'gruvbox-community/gruvbox'}
end)


