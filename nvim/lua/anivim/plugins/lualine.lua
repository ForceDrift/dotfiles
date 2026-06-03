return {
	'nvim-lualine/lualine.nvim',
	priority = 500,
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		-- pull colors here
		local colors = require("anivim.configs.colors").palette

		local theme = {
			normal = {
				a = { fg = colors.black, bg = colors.blue, gui = 'bold' },
				b = { fg = colors.black, bg = colors.white },
				c = { fg = colors.white, bg = colors.black },
				z = { fg = colors.black, bg = colors.blue },
			},
			insert = {
				a = { fg = colors.black, bg = colors.yellow, gui = 'bold' },
				b = { fg = colors.black, bg = colors.white },
			},
			visual = {
				a = { fg = colors.black, bg = colors.orange, gui = 'bold' },
				b = { fg = colors.black, bg = colors.white },
			},
			replace = {
				a = { fg = colors.black, bg = colors.green, gui = 'bold' },
				b = { fg = colors.black, bg = colors.white },
			},
		}

		-- [the rest of your existing lualine logic remains the same]
		-- make sure to use 'colors.black' in your process_sections gaps!
		local empty = require('lualine.component'):extend()
		function empty:draw(default_highlight)
			self.status = ''
			self.applied_separator = ''
			self:apply_highlights(default_highlight)
			self:apply_section_separators()
			return self.status
		end

		local function process_sections(sections)
			for name, section in pairs(sections) do
				local left = name:sub(9, 10) < 'x'
				for pos = 1, name ~= 'lualine_z' and #section or #section - 1 do
					table.insert(section, pos * 2,
						{ empty, color = { fg = colors.black, bg = colors.black } })
				end
				for id, comp in ipairs(section) do
					if type(comp) ~= 'table' then
						comp = { comp }
						section[id] = comp
					end
					comp.separator = left and { right = '' } or { left = '' }
				end
			end
			return sections
		end

		require('lualine').setup {
			options = {
				theme = theme,
				component_separators = '',
				section_separators = { left = '', right = '' },
				globalstatus = true,
			},
			sections = process_sections {
				lualine_a = { { 'mode', fmt = function(str)
					local mode_map = {
						['normal'] = 'セーバーnormal',
						['insert'] = '書く- insert',
						['visual'] = '見る - visual'
					}
					return mode_map[str] or str
				end } },
				lualine_b = { 'branch', 'diff', { 'filename', path = 1 } },
				lualine_y = { 'filetype' },
				lualine_z = { '%l:%c' },
			},
		}
	end,
}
