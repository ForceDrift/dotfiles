local autocmd = vim.api.nvim_create_autocmd

local function augroup(name)
	return vim.api.nvim_create_augroup("local_" .. name, { clear = true })
end

local function remove_crlf()
	if not vim.bo.modifiable then
		return
	end
	vim.cmd([[%s/\r//e]])
end

-- remove CRLF on save
autocmd("BufWritePre", {
	group = augroup("remove_crlf"),
	pattern = "*",
	callback = remove_crlf,
})

-- remove CRLF on paste / text change
autocmd({ "TextChanged", "TextChangedI" }, {
	group = augroup("remove_crlf"),
	pattern = "*",
	callback = remove_crlf,
})
