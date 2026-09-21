vim.g.mapleader = " "
local py = vim.fn.stdpath("data") .. "/venv/bin/python3"
if vim.fn.filereadable(py) == 1 then
	vim.g.python3_host_prog = py
end

vim.opt.splitright = true
vim.g.maplocalleader = " "
vim.opt.termguicolors = true
require("anivim")
