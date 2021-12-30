-- projekt0n/github-nvim-theme settings.

function config()
    require("github-theme").setup({
        theme_style = "dark",
        transparent = true,
    })
end

return {
    config = config,
}
