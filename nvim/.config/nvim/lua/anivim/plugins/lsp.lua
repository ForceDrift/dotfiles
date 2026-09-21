return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"saghen/blink.cmp",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			{
				"folke/lazydev.nvim",
				opts = {
					library = {
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd" },
				automatic_enable = false,
			})
			local capabilities = require("blink.cmp").get_lsp_capabilities()

			local servers = { "lua_ls", "rust_analyzer", "ts_ls", "clangd" }

			if vim.lsp.enable then
				-- Neovim 0.11+: new native LSP API
				vim.lsp.config("*", { capabilities = capabilities })
				vim.lsp.enable(servers)
			else
				-- Neovim < 0.11: fall back to lspconfig-style setup
				local lspconfig = require("lspconfig")
				for _, server in ipairs(servers) do
					local ok = pcall(function()
						lspconfig[server].setup({ capabilities = capabilities })
					end)
					if not ok then
						vim.notify("lspconfig: no config for " .. server, vim.log.levels.WARN)
					end
				end
			end

			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					local client = vim.lsp.get_client_by_id(args.data.client_id)
					local opts = { buffer = args.buf }

					vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

					vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
					vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
					vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

					if client and client.supports_method("textDocument/formatting") then
						vim.api.nvim_create_autocmd("BufWritePre", {
							buffer = args.buf,
							callback = function()
								vim.lsp.buf.format({ bufnr = args.buf })
							end,
						})
					end
				end,
			})
		end,
	},
}
