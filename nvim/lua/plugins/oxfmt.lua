return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      typescript = { "oxfmt" },
      typescriptreact = { "oxfmt" },
      javascript = { "oxfmt" },
      javascriptreact = { "oxfmt" },
    },
    formatters = {
      oxfmt = {
        command = "npx",
        args = { "oxfmt", "$FILENAME" },
        stdin = false,
      },
    },
  },
}
