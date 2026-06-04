return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	opts = {
		formatters_by_ft = {
			-- Only use stylua, don't let LSP try to format
			lua = { "stylua", "cpp" },
		},
		format_on_save = {
			timeout_ms = 500,
			-- This is the key: only use LSP if stylua fails
			lsp_fallback = true,
		},
	},
}
