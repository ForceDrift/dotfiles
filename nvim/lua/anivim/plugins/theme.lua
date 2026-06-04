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
	"sainnhe/everforest",
	priority = 1000,
	config = function()
		vim.g.everforest_background = 'hard'
		vim.g.everforest_better_performance = 1
		vim.g.everforest_colors_override = {
			bg0 = '#1E2326',
			bg1 = '#252D2F',
			bg2 = '#2E3638',
			bg3 = '#384043',
			bg4 = '#404649',
		}
		vim.cmd.colorscheme('everforest')
	end
}
