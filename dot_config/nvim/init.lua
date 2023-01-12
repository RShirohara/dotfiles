-- Neovim settings.
-- Executes scripts at the start of session.

-- Load settings.
---- Editor settings.
require("settings")

---- Keymaps.
require("keymaps")

---- Plugins.
require("plugins")

---- NVUI setting.
if vim.g.nvui == 1 then
    require("nvui")
end
