local function prepend_to_path(dir)
	if not string.find(vim.env.PATH, dir, 1, true) then
		vim.env.PATH = dir .. ":" .. vim.env.PATH
	end
end

prepend_to_path("/Library/TeX/texbin")
prepend_to_path("/opt/homebrew/bin")
prepend_to_path(vim.fn.expand("~/.local/bin"))

require("anivim.configs.keymaps")
require("anivim.configs.options")
require("anivim.configs.autocmds")
require('anivim.configs.lazy')
require('lazy').setup({
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate'
})
