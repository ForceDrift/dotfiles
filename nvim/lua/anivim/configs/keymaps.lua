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
	local output_name = "temp_runner" -- Constant name for easier cleanup
	local compiler = "g++"
	local pattern = "*.cpp"

	if file_ext == "c" or file_ext == "h" then
		compiler = "gcc"
		pattern = "*.c"
	end

	local cmd = string.format(
		"cd %s && %s %s -o temp_exec && ./temp_exec ; rm temp_exec",
		dir,
		compiler,
		current_file
	-- pattern,
	-- output_name,
	-- output_name,
	-- output_name
	)

	require("toggleterm").exec(cmd)
end

local M = {
	["cpp"] = true,
	["c"] = true,
	["h"] = true,
}

map("n", "<leader>rr", function()
	if M[vim.bo.filetype] then
		run_cpp_and_cleanup()
	else
		vim.notify("Not a Valid C, H, or C++ file", vim.log.levels.WARN)
	end
end, { desc = "Compile, Run, and Cleanup C++ in Float" })
