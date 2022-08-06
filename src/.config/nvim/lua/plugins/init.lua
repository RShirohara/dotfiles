-- Neovim plugins setting.

---- Load plugins.
vim.cmd("packadd packer.nvim")

require("packer").startup(function()
    -- Plugin manager
    use({
        "wbthomason/packer.nvim",
        opt = true,
    })

    -- Library
    use({
        "nvim-lua/plenary.nvim"
    })
    use({
        "stevearc/dressing.nvim"
    })
    use({
        "kyazdani42/nvim-web-devicons",
        config = require("plugins.nvim-web-devicons").config
    })
    use({
        "rcarriga/nvim-notify",
        after = "github-nvim-theme",
        config = require("plugins.nvim-notify").config
    })

    -- Layouts
    ---- Colorscheme
    use({
        "projekt0n/github-nvim-theme",
        config = require("plugins.github-nvim-theme").config
    })
    ---- Statusline
    use({
        "nvim-lualine/lualine.nvim",
        requires = {
            "kyazdani42/nvim-web-devicons",
            opt = true
        },
        after = "github-nvim-theme",
        config = require("plugins.lualine").config
    })
    ---- Bufferline
    use({
        "akinsho/bufferline.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("bufferline").setup()
        end
    })
    ---- Highlight
    use({
        "RRethy/vim-illuminate"
    })
    use({
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end
    })
    use({
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup()
        end
    })
    ---- Scrollbar
    use({
        "petertriho/nvim-scrollbar",
        config = function()
            require("scrollbar").setup()
        end
    })

    -- Feature extensions.
    ----  Explorer
    use({
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons",
        config = require("plugins.nvim-tree").config
    })
    ---- Terminal
    use({
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm").setup()
        end
    })
    ---- Command pallet
    use({
        "mrjones2014/legendary.nvim"
    })

    -- Coding supports
    ---- Brackets
    use({
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup()
        end
    })

    -- Project managements
    ---- Git
    use({
        "lewis6991/gitsigns.nvim",
        config = require("plugins.gitsigns").config
    })

    -- Language managements
    ---- Treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = require("plugins.nvim-treesitter").config
    })
    use({
        "yioneko/nvim-yati",
        requires = "nvim-treesitter/nvim-treesitter",
        config = require("plugins.nvim-yati").config
    })
    use({
        "nvim-treesitter/nvim-treesitter-context",
        requires = "nvim-treesitter/nvim-treesitter",
        config = function()
            require("treesitter-context").setup()
        end
    })
    use({
        "m-demare/hlargs.nvim",
        requires = "nvim-treesitter/nvim-treesitter",
        config = function()
            require("hlargs").setup()
        end
    })
end
)
