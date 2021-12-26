-- nvim-treesitter/nvim-treesitter settings.

run = ":TSUpdate"

function config()
    require("nvim-treesitter.configs").setup({
        ensure_installed = "maintained",
        sync_install = false,
        highlight = {
            enable = true,
        },
    })
end

return {
    run = run,
    config = config,
}
