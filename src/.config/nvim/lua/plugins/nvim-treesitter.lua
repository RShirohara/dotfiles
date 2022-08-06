-- nvim-treesitter/nvim-treesitter settings.

return {
    config = function()
        require("nvim-treesitter.configs").setup({
            sync_install = false,
            float = {
                enable = true
            },
            highlight = {
                enable = true
            },
            view = {
                hide_root_folder = true
            }
        })
    end
}
