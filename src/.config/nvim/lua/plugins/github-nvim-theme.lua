-- projekt0n/github-nvim-theme settings.

return {
    config = function()
        require("github-theme").setup({
            theme_style = "dark",
            transparent = true
        })
    end
}
