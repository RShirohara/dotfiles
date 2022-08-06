--kyazdami42/nvim-tree settings.

return {
    config = function()
        require("nvim-tree").setup({
            disable_netrw = true
        })
    end
}
