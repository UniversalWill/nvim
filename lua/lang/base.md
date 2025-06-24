***Болванка для добавления новых языков
```lua
vim.lsp.enable("your_lsp")

vim.lsp.config("your_lsp", {
	capabilities = Capabilities,
})

Fmt.formatters_by_ft.'your_file_type' = { "your_formatter" }
```

