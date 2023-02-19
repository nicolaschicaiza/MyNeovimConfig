local packer = require('packer')

return packer.startup(function(use)
    -- Aqui agregas los plugins que deseas utiliza, por ejemplo:
    -- use {'nombre_del_plugin'}
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons' -- Opcional, para iconos de archivo
        },
        tag = 'nightly' -- optional, updated every week. 
    }
    use {'tpope/vim-fugitive'}
    use {
        'folke/which-key.nvim',
        config = function()
            vim.o.timeout = ture
            vim.o.timeoutlen = 300
            require("which-key").setup {}
        end
    }
    -- 	use {
    -- 		'nvim-treesitter/nvim-treesitter',
    -- 		run = ':TSUpdate'
    -- 	}
    use {'wakatime/vim-wakatime'}

    -- Instalación de Servicios de lenguajes
    -- 	use {  
    --         'VonHeikemen/lsp-zero.nvim', 
    --         branch = 'v1.x',
    -- 		requires = {
    -- 			-- Soporte LSP
    -- 			{ 'neovim/nvim-lspconfig' }, -- Language Server Protocol (LSP)
    -- 			{ 'williamboman/mason.nvim' },
    -- 			{ 'williamboman/mason-lspconfig.nvim' },
    -- 
    -- 			-- Autocompletado
    -- 			{ 'hrsh7th/nvim-cmp' },
    -- 			{ 'hrsh7th/cmp-buffer' },
    -- 			{ 'hrsh7th/cmp-path' },
    -- 			{ 'saadparwaiz1/cmp_luasnip' },
    -- 			{ 'hrsh7th/cmp-nvim-lsp' },
    -- 			{ 'hrsh7th/cmp-nvim-lua' },
    -- 
    -- 			-- Snippets
    -- 			{ 'L3MON4D3/LuaSnip' },
    -- 			{ 'rafamadriz/friendly-snippets' },
    -- 
    -- 		} 
    -- 	}

    use {
        'williamboman/nvim-lsp-installer', 'neovim/nvim-lspconfig',
        'folke/lsp-trouble.nvim', 'glepnir/lspsaga.nvim',
        'ray-x/lsp_signature.nvim', 'onsails/lspkind-nvim',
        'kosayoda/nvim-lightbulb', 'jose-elias-alvarez/null-ls.nvim',
        'hrsh7th/nvim-cmp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path',
        'hrsh7th/cmp-nvim-lsp', 'saadparwaiz1/cmp_luasnip', 'L3MON4D3/LuaSnip'
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        'nvim-treesitter/playground',
        run = ':TSUpdate'
    }
    use {
        'akinsho/nvim-bufferline.lua',
        requires = {'kyazdani42/nvim-web-devicons'}
    }
    use {'nvim-lua/popup.nvim'}
    use {'nvim-lua/plenary.nvim'}
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/popup.nvim'},
            {'nvim-lua/plenary.nvim'}
    }
    }
    use {'glepnir/galaxyline.nvim', branch = 'main'}
    use {'norcalli/nvim-colorizer.lua'}
    use {'karb94/neoscroll.nvim'}
    use {'mbbill/undotree', cmd = 'UndotreeToggle'}
    use {'sbdchd/neoformat'}
    use {'windwp/nvim-autopairs'}
    use {'famiu/bufdelete.nvim'}
    use {'voldikss/vim-floaterm'}
    use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
    use {'terrortylor/nvim-comment'}
    use {'akinsho/nvim-toggleterm.lua'}
    use {
        'kristijanhusak/orgmode.nvim',
        config = function() require('orgmode').setup() end
    }
    use {'jiangmiao/auto-pairs'}
    use {
        'mhartington/formatter.nvim',
        config = function() require('modules.lsp.formatters') end,
        opt = true
    }
    use {
        'williamboman/nvim-lsp-installer',
        config = function() require('modules.lsp.servers') end
    }
    use { 
        'glepnir/dashboard-nvim',
        event = "VimEnter",
        config = function()
            require('dashboard').setup {

            }
        end,
        requires = {'nvim-tree/nvim-web-devicons'}
    }

    -- Instalación de esquema de colores 
    use {'gruvbox-community/gruvbox'}
    use {'joshdick/onedark.vim'}
end)

