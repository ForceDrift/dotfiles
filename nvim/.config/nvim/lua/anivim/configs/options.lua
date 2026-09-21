local opt = vim.opt
vim.schedule(function()
	local has = vim.fn.executable
	local has_display = vim.env.DISPLAY ~= nil and vim.env.DISPLAY ~= ""
		or vim.env.WAYLAND_DISPLAY ~= nil and vim.env.WAYLAND_DISPLAY ~= ""
	local use_system = vim.fn.has("mac") == 1
		or has_display and (has("wl-copy") == 1 or has("xclip") == 1 or has("xsel") == 1)
	if use_system then
		vim.opt.clipboard = "unnamedplus"
	elseif has("tmux") == 1 then
		vim.g.clipboard = {
			name = "tmux",
			copy = {
				["+"] = { "tmux", "load-buffer", "-" },
				["*"] = { "tmux", "load-buffer", "-" },
			},
			paste = {
				["+"] = { "tmux", "save-buffer", "-" },
				["*"] = { "tmux", "save-buffer", "-" },
			},
			cache_enabled = true,
		}
		vim.opt.clipboard = "unnamedplus"
	end
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
