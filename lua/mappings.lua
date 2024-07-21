require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- visual mode block move --
-- shift flavour
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- alt flavour
map("v", "<A-j>", ":m '>+1<CR>gv=gv")
map("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- normal mode block move --
-- alt flavour
map("n", "<A-k>", ":m .-2<CR>==")
map("n", "<A-j>", ":m .+1<CR>==")


-- scrolling that maintains cursor's center position --
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- searching that maintains cursor's center position --
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- paste without replacing register --
map("x", "p", [["_dP]])

-- find and replace --
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- manual highlight disable --
map("n", "<leader>h", "<cmd>noh<cr>")

-- nvim-tree --
map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")
-- chmod+x --
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- buffer move --
map('n', 'H', ':bnext<CR>')
map('n', 'L', ':bprev<CR>')

vim.api.nvim_create_autocmd("FileType", {
  pattern = "tex",
  callback = function()
    -- Map <leader>ll to VimtexCompile
    vim.api.nvim_buf_set_keymap(0, "n", "<leader>ll", ":VimtexCompile<CR>", { noremap = true, silent = true })
    -- Map <leader>lL to VimtexCompileStop
    vim.api.nvim_buf_set_keymap(0, "n", "<leader>lL", ":VimtexCompileStop<CR>", { noremap = true, silent = true })
  end,
})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
