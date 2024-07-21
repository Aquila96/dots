require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.opt.nu = true
vim.opt.relativenumber = true

-- color format --
vim.opt.termguicolors = true

-- indents --
-- vim.opt.tabstop = 4
-- vim.opt.softtabstop = 4
-- vim.opt.shiftwidth = 4
-- vim.opt.expandtab = true
-- vim.opt.smartindent = true

-- no line wrap --
vim.opt.wrap = false

-- no swap but only for undotree --
-- vim.opt.swapfile = false
-- vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- vim.opt.undofile = true

-- search --
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- scroll control --
vim.opt.scrolloff = 8

-- sign column always on? --
vim.opt.signcolumn = "yes"

-- 80 col sign --
vim.opt.colorcolumn = "80"
