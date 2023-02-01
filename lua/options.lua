-- vim.opt:        behaves like :set
-- vim.opt_global: behaves like :setglobal
-- vim.opt_local:  behave like :setlocal

-- vim.o:  behaves like :set
-- vim.go: behaves like :setglobal
-- vim.bo: for buffer-scoped options
-- vim.wo: for windows-scoped options

-- line number
vim.wo.number = true
vim.wo.relativenumber = true

-- number of spaces that a <Tab> counts for
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtap = true

-- highlight the text line of the sursor
vim.wo.cursorline = true

-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'

-- minimal number of secreen lines to keep above and below the cursor
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"

-- 
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4

-- 
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- close the insert... mode tag
vim.o.showmode = false
