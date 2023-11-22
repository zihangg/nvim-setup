-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  use({
	'nvim-treesitter/nvim-treesitter', 
	{ run = ':TSUpdate'}
  })

  use({
  	'nvim-treesitter/playground'
  })

  use({
	'theprimeagen/harpoon'
  })

  use({
	'mbbill/undotree'
  })

  use({
	'tpope/vim-fugitive'
  })

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  -- Uncomment these if you want to manage LSP servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }

  use ({
      'folke/tokyonight.nvim'
  })

  use({
      "stevearc/aerial.nvim",
      config = function()
          require("aerial").setup({
              log_level = "info",
              backends = { "treesitter", "lsp" },
              highlight_on_hover = true,
              attach_mode = "global",
              filter_kind = {
                  "Class",
                  "Field",
                  "Variable",
                  "Constructor",
                  "Enum",
                  "Function",
                  "Interface",
                  "Module",
                  "Method",
                  "Struct",
              },
          })
      end,
  })
  
  use {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      requires = { 
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
          -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
      }
  }

  use 'famiu/bufdelete.nvim'
  
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup({
          direction = "horizontal",
          size = 10,
          open_mapping = [[<c-`>]],
      })
  end}

  use ({
      "stevearc/conform.nvim"
  })

  end)
