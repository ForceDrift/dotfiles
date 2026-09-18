return {
  "MagicDuck/grug-far.nvim",
  cmd = "GrugFar",
  keys = {
    {
      "<leader>sr",
      function()
        local selection = vim.fn.getregion(vim.fn.getpos("'<"), vim.fn.getpos("'>"), { type = vim.fn.mode() })
        require("grug-far").open({ prefills = { search = table.concat(selection, "\n") } })
      end,
      desc = "Search and Replace (Grug Far)",
      mode = { "v", "x" },
    },
  },
}
