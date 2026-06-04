local opt = vim.opt
vim.schedule(function()
    vim.opt.clipboard = "unnamedplus"
end)

local colors = require("anivim.configs.colors").palette
vim.diagnostic.config({
    -- This is the setting you want
    virtual_text = {
        spacing = 4,
        prefix = "●", -- or "■", "󰅚", etc.
    },
    signs = false,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})
opt.wrap = false
-- Hide the ~ character on empty lines
opt.fillchars = { eob = " " }
opt.number = true
opt.relativenumber = true
opt.numberwidth = 4
-- Enable persistent undo
opt.undofile = true

-- Set where undo files are stored (Neovim creates this automatically)
opt.undodir = vim.fn.stdpath("state") .. "/undo"
opt.scrolloff = 4
