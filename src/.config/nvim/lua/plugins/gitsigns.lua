-- lewis6991/gitsigns.nvim setting.

return {
    config = function()
        require("gitsigns").setup({
            current_line_blame = true
        })
    end
}
