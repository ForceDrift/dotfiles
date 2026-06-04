return -- lazy.nvim
{
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
        timeout = 1000,

        -- add any options here
    },
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
}
