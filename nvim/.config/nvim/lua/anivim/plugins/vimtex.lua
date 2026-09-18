return {
	"lervag/vimtex",
	lazy = false,
	init = function()
		vim.g.tex_flavor = "latex"

		-- Viewer: Zathura.
		-- "zathura_simple" is recommended on macOS: the default "zathura"
		-- variant needs `xdotool`, which does not exist on macOS.
		vim.g.vimtex_view_method = "zathura_simple"
		vim.g.vimtex_view_zathura_use_synctex = 1 -- keeps forward/inverse search
		vim.g.vimtex_quickfix_mode = 0 -- errors shown via \le / <leader>le

		-- Compiler: latexmk with SyncTeX outputting to ./build.
		-- `continuous = 1` runs latexmk with `-pvc`: it recompiles on every
		-- save and Zathura reloads the PDF automatically = live preview.
		vim.g.vimtex_compiler_method = "latexmk"
		vim.g.vimtex_compiler_latexmk = {
			out_dir = "build",
			continuous = 1,
			options = {
				"-synctex=1",
				"-interaction=nonstopmode",
				"-file-line-error",
				"-verbose",
			},
		}

		vim.opt.conceallevel = 1
		vim.g.tex_conceal = "abdmg"
	end,
	config = function()
		-- <leader> shortcuts for LaTeX.
		-- Uses VimTeX commands directly. Function-based mappings give
		-- visible feedback when something is wrong instead of silent failure.
		local function tex_map(lhs, cmd, desc)
			vim.keymap.set("n", lhs, function()
				if vim.fn.exists(":" .. cmd) ~= 2 then
					vim.notify("VimTeX not active — no " .. cmd .. " available", vim.log.levels.WARN)
					return
				end
				vim.cmd(cmd)
			end, { desc = "VimTeX: " .. desc })
		end

		tex_map("<leader>lc", "VimtexCompile",   "Start/stop continuous compile")
		tex_map("<leader>lv", "VimtexView",      "Open PDF / forward search in Zathura")
		tex_map("<leader>le", "VimtexErrors",    "Show errors in quickfix")
		tex_map("<leader>lk", "VimtexClean",     "Clean auxiliary files")
	end,
}