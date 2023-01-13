--kyazdami42/nvim-tree settings.

return {
    config = function()
        require("nvim-tree").setup({
            disable_netrw = true,
            view = {
                hide_root_folder = true
            },
            renderer = {
                group_empty = true
            }
        })
    end
}