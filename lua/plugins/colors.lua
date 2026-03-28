return {
    { "edeneast/nightfox.nvim" },
    {
        "joshdick/onedark.vim",
        config = function()
            vim.opt.termguicolors = true
            vim.cmd.colorscheme("nightfox")
        end,
    },
}
