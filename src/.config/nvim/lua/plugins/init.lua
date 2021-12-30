-- Neovim plugins setting.

---- Load plugins.
vim.cmd("packadd packer.nvim")

require("packer").startup(function()
    -- Plugin manager
    use{
        "wbthomason/packer.nvim",
        opt = true,
    }

    -- Workbench
    ---- Colorscheme
    use{
        "projekt0n/github-nvim-theme",
        config = require("plugins.github-nvim-theme").config
    }

    ---- Statusline
    use{
        "itchyny/lightline.vim",
        config = require("plugins.lightline").config,
    }

    ---- Explorer
    use{
        "kyazdani42/nvim-tree.lua",
        requires = {
            "kyazdani42/nvim-web-devicons"
        },
        config = require("plugins.nvim-tree").config,
    }

    ---- Git
    use{
        "lewis6991/gitsigns.nvim",
        requires = {
            "nvim-lua/plenary.nvim"
        },
        config = require("plugins.gitsigns").config,
    }
    
    -- Syntax
    ---- Treesitter
    use{
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = require("plugins.nvim-treesitter").config,
    }

    ---- LSP
    ---- neovim/nvim-lspconfig
    ---- nvim-lua/lsp-status.nvim
end
)
