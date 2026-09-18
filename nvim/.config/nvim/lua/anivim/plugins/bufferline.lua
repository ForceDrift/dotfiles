return {
	'akinsho/bufferline.nvim',
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		local colors = require("anivim.configs.colors").palette

		require("bufferline").setup({
			options = {
				mode = "buffers",
				separator_style = "slant",
				offsets = {
					{
						filetype = "neo-tree",
						text = "󰙅 EXPLORER",
						text_align = "center",
						separator = true,
					}
				},
				highlights = {
					fill = {
						bg = colors.black,
					},
					offset_separator = {
						fg = colors.grey,
						bg = colors.black,
					},
				},
			}
		})
	end
}
