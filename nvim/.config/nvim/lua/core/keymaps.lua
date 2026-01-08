vim.g.mapleader = " "

vim.keymap.set("n", "<leader>l", ":Lazy<CR>")
vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>")
vim.keymap.set("n", "<leader>m", ":Mason<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "G", "Gzz")

vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set({"n", "v"}, "<leader>p", "\"+p")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>")

-- LSP Keymaps
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_next)
vim.keymap.set("n", "]d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<leader>rr", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help)

-- Format
vim.keymap.set({ "n", "v"}, "<C-f>", vim.lsp.buf.format)

-- Git
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk_inline<CR>")
