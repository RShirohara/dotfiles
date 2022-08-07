-- VonHeikemen/fine-cmdline.nvim settings.

return {
    config = function()
        vim.keymap.set("n", ":", require("fine-cmdline").open, {noremap = true})
    end
}
