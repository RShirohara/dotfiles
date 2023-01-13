-- rcarriga/nvim-notify settings.

return {
    config = function()
        vim.notify = require("notify")
    end
}
