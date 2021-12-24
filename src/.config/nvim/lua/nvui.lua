-- rohit-px2/nvui setting.

---- Fonts.
vim.opt.guifont = "HackGenNerd Console:h10.5,monospace"

---- Enable IME only Insert mode.
-- vim.cmd([[
--    autocmd InsertEnter * NvuiIMEEnable
--    autocmd InsertLerve * NvuiIMEDisable
--]])

---- Title bar setting.
function NvuiGetTitle()
    local file = vim.fn.expand("%:t")
    local dir = vim.fn.expand("%:h:t")
    local title = "nvui"

    if string.len(dir) > 0 or dir ~= "." then
        title = dir .. " - " .. title
    end
    if string.len(file) > 0 then
        title = file .. " - " .. title
    end
    return file .. dir .. "nvui"
end
