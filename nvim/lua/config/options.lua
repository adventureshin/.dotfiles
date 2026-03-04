---@diagnostic disable: undefined-global
vim.opt.scrolloff = 3
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.textwidth = 80
vim.opt.colorcolumn = "+1,+2,+3"
vim.opt.formatoptions:remove("t")
vim.opt.wrapscan = false
vim.opt.mouse = ""
vim.opt.matchpairs:append("<:>")
vim.opt.listchars = { tab = "› ", trail = "-", extends = "»", precedes = "«", nbsp = "." }
vim.opt.relativenumber = false
vim.g.ai_cmp = false

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#6c7d8c" })
  end,
})
