-- Neovim plugins setting.

---- Load plugins.
vim.cmd("packadd packer.nvim")

require("packer").startup(function()
    -- Plugin manager
    --[[
    use{
        "wbthomason/packer.nvim",
        opt = true,
    }
    --]]

    -- Workbench
    ---- Colorscheme
    use{
        "ful1e5/onedark.nvim",
        config = require("onedark").setup
    }
    ---- Statusline
    use{
        "itchyny/lightline.vim",
        config = function()
            vim.g.lightline = {
                colorscheme = "onedark"
            }
        end
    }

    ---- Explorer
    use{
        "kyazdani42/nvim-tree.lua",
        requires = {
            "kyazdani42/nvim-web-devicons"
        },
        config = function()
            require("nvim-tree").setup()
        end
    }

    ---- Git
    use{
        "lewis6991/gitsigns.nvim",
        requires = {
            "nvim-lua/plenary.nvim"
        },
        config = function()
            require("gitsigns").setup()
        end
    }
    
    -- Syntax
    ---- Treesitter
    use{
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = "maintained",
                sync_install = false,
                highlight = {
                    enable = true,
                },
            })
        end
    }

    ---- LSP
    ---- neovim/nvim-lspconfig
    ---- nvim-lua/lsp-status.nvim
end
)
