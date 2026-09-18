local opts = { silent = true }
local map = vim.keymap.set

map("i", "jk", "<Esc>l", opts)

-------------------------------------------------------------------------------
----- DISABLED KEYS
----------------------------------------------------------------------------------
map("n", "<UP>", "<NOP>", opts)
map("n", "<DOWN>", "<NOP>", opts)
map("n", "<LEFT>", "<NOP>", opts)
map("n", "<RIGHT>", "<NOP>", opts)

map("t", "jk", [[<C-\><C-n>]], { desc = "Exit Terminal Mode" })
map("n", "<leader>nt", "<cmd>exe v:count1 . 'ToggleTerm'<cr>", { desc = "New Terminal" })
map("n", "<D-h>", ":bprevious<CR>")
map("n", "<D-l>", ":bnext<CR>")

map("n", "<A-h>", "<C-w>h")
map("n", "<A-l>", "<C-w>l")

local function run_cpp_and_cleanup()
	local dir = vim.fn.expand("%:p:h")
	local current_file = vim.fn.expand("%:t")
	local file_ext = vim.fn.expand("%:e")

	local cmd
	if file_ext == "cpp" then
		cmd = string.format(
			"cd %s && g++ %s -o out && ./out",
			dir,
			current_file
		)
	elseif file_ext == "c" then
		cmd = string.format(
			"cd %s && gcc -std=c99 -Wall %s -o out && ./out",
			dir,
			current_file
		)
	else
		vim.notify("Not a valid .c or .cpp file", vim.log.levels.WARN)
		return
	end

	require("toggleterm").exec(cmd)
end

local M = {
	["cpp"] = true,
	["c"] = true,
}

map("n", "<leader>rr", function()
	if M[vim.bo.filetype] then
		run_cpp_and_cleanup()
	else
		vim.notify("Not a Valid C or C++ file", vim.log.levels.WARN)
	end
end, { desc = "Compile and Run C/C++ in Float" })
