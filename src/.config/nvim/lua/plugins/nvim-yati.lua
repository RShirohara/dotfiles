-- yioneko/nvim-yati settings.

return {
    config = function()
        require("nvim-treesitter.configs").setup({
            yati = {
                enable = true
            }
        })
    end
}
