-- nvim-lualine/lualine.nvim settings.

return {
    config = function()
        require("lualine").setup({
            options = {
                theme = "auto"
            },
            extensions = {
                "nvim-tree"
            }
        })
    end
}
