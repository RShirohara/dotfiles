-- nvim-telescope/telescope.nvim settings.

return {
    config = function()
        vim.keymap.set("n", "<C-p>", require("telescope.builtin").find_files)
        vim.keymap.set("n", "<C-f>", require("telescope.builtin").live_grep)
    end
}
