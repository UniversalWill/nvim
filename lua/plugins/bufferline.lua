return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        require("bufferline").setup({
            options = {
                buffer_close_icon = "",
                mode = "buffers",
                modified_icon = "●",
                left_trunc_marker = "",
                right_trunc_marker = "",
                diagnostics = "nvim_lsp",
                indicator = {
                    style = "none",
                },
                diagnostics_indicator = function(count, level, diagnostics_dict, context)
                    local icon = level:match("error") and " " or " "
                    return " " .. icon .. count
                end,
                always_show_bufferline = true,
                separator_style = "thin",
            },
        })
    end,
}
