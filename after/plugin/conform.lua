require("conform").setup({
   require("conform").setup({
      formatters_by_ft = {
        ["*"] = { "trim_whitespace", "trim_newlines" },
        css = { "prettierd", "prettier" },
        javascript = { "prettierd", "prettier" },
        typescript = { "prettierd", "prettier" },
        javascriptreact = { "prettierd", "prettier" },
        typescriptreact = { "prettierd", "prettier" },
        markdown = { "prettierd", "prettier" },
        sh = { "shfmt" },
        toml = { "taplo" },
        yaml = { "yamlfmt" },
        zsh = { "beautysh" },
        go = { "gofumpt" }
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = "always",
      },
    })
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})
