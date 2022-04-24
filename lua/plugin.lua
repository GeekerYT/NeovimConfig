-- packer.nvim
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    -- buffer
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('bufferline').setup()
        end
    }

    -- themes (disabled other themes to optimize startup time)
    use {
        'sainnhe/sonokai',
        config = function()
            require("theme")          
        end
    }

    -- file tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require("filetree")
        end
    }

    --  highlight code
    use {'nvim-treesitter/nvim-treesitter',
        config = function()
            require("treesitter")
        end
    }

    -- lsp 
    use {
        'neovim/nvim-lspconfig',
        config = function()
            require('lsp')
        end
    }
    -- completion 
    use {'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline', 
            'SirVer/ultisnips'
        },
        config = function()
            require('completion')
        end
    }


    -- status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require("statusline")
        end
    }

end)
