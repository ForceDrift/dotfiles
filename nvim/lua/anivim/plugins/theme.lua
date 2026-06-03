-- return {
--   "AstroNvim/astrotheme",
--   priority = 1000,
--   config = function()
--     local colors = require("anivim.configs.colors").palette
--
--     require("astrotheme").setup({
--       palette = "astrodark",
--       options = {
--         dim_inactive = false,
--         styles = {
--           sidebars = "flat",
--           floating = "flat",
--         },
--       },
--       highlights = {
--         astrodark = {
--           -- Keep your forced backgrounds
--           Normal = { bg = colors.bg_dark },
--           NormalNC = { bg = colors.bg_dark },
--           NeoTreeNormal = { bg = colors.black },
--           NeoTreeNormalNC = { bg = colors.black },
--
--           -- ADD THE SEPARATOR HERE
--           -- We use colors.grey for a subtle look, or colors.blue for an "Anime HUD" glow
--
--           -- Optional: Make the vertical split character a solid line
--         },
--       },
--     })
--     vim.cmd.colorscheme("astrodark")
--   end,
-- }


return
-- Using Lazy
{
	"navarasu/onedark.nvim",
	version = "v0.1.0", -- Pin to legacy version
	priority = 1000,
	config = function()
		require('onedark').setup {
			style = 'darker'
		}
		require('onedark').load()
	end
}
