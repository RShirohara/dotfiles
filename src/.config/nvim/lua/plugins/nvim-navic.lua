-- SmiteshP/nvim-navic settings.

return {
    config = function()
        vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
    end
}
