local wk = require("which-key")

wk.register({
    f = {
        name = "Find",
        f = { "Find File" },
        b = { "Find Buffer" },
        h = { "Find Help" },
        w = { "Find Text" },
    },
    e = { "File Manager" },
    o = { "Git status" },
    w = { "Save" },
    t = {
        name = "Terminal",
        f = { "Float terminal" },
        h = { "Horizontal terminal" },
    },
    h = { "No highlight" },
    g = {
        name = "Git",
        b = { "Branches" },
        c = { "Commits" },
        s = { "Status" },
    },
    c = {
        name = "Comment",
        l = "Comment Line",
    },
    l = {
        name = "LSP",
        d = "Diagnostic",
        D = "Hover diagnostic",
        f = "Format",
        r = "Rename",
        a = "Action",
        s = "Symbol",
    },
    x = {
        name = "Trouble",
        x = "Diagnostics",
        X = "Buffer Diagnostics",
        s = "Symbols",
        l = "LSP",
        L = "Location List",
        Q = "Quickfix List",
    },
    v = {
        name = "Venv",
        s = "Select",
        c = "Select cached",
    },
}, { prefix = "<leader>" })

-- Suggested Spec:
-- {
--   { "<leader>c", group = "Comment" },
--   { "<leader>cl", desc = "Comment Line" },
--   { "<leader>e", desc = "File Manager" },
--   { "<leader>f", group = "Find" },
--   { "<leader>fb", desc = "Find Buffer" },
--   { "<leader>ff", desc = "Find File" },
--   { "<leader>fh", desc = "Find Help" },
--   { "<leader>fw", desc = "Find Text" },
--   { "<leader>g", group = "Git" },
--   { "<leader>gb", desc = "Branches" },
--   { "<leader>gc", desc = "Commits" },
--   { "<leader>gs", desc = "Status" },
--   { "<leader>h", desc = "No highlight" },
--   { "<leader>l", group = "LSP" },
--   { "<leader>lD", desc = "Hover diagnostic" },
--   { "<leader>la", desc = "Action" },
--   { "<leader>ld", desc = "Diagnostic" },
--   { "<leader>lf", desc = "Format" },
--   { "<leader>lr", desc = "Rename" },
--   { "<leader>ls", desc = "Symbol" },
--   { "<leader>o", desc = "Git status" },
--   { "<leader>t", group = "Terminal" },
--   { "<leader>tf", desc = "Float terminal" },
--   { "<leader>th", desc = "Horizontal terminal" },
--   { "<leader>v", group = "Venv" },
--   { "<leader>vc", desc = "Select cached" },
--   { "<leader>vs", desc = "Select" },
--   { "<leader>w", desc = "Save" },
--   { "<leader>x", group = "Trouble" },
--   { "<leader>xL", desc = "Location List" },
--   { "<leader>xQ", desc = "Quickfix List" },
--   { "<leader>xX", desc = "Buffer Diagnostics" },
--   { "<leader>xl", desc = "LSP" },
--   { "<leader>xs", desc = "Symbols" },
--   { "<leader>xx", desc = "Diagnostics" },
-- }


wk.register({
    g = {
        D = { "Buffer declaration" },
        i = { "Buffer implementation" },
    },
    l = {
        r = { "References" },
        d = { "Definitions" },
    },
})

-- -- Suggested Spec:
-- {
--   { "gD", desc = "Buffer declaration" },
--   { "gi", desc = "Buffer implementation" },
--   { "ld", desc = "Definitions" },
--   { "lr", desc = "References" },
-- }
