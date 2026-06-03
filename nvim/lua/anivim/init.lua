require("anivim.configs.keymaps")
require("anivim.configs.options")
require("anivim.configs.autocmds")
require('anivim.configs.lazy')
require('lazy').setup({
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate'
})
