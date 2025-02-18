-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<D-s>", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<D-s>", "<Esc>:w<CR>", { noremap = true, silent = true }) -- Save in insert mode

vim.keymap.set("n", "<leader>q", "<Esc>:bd<CR>", { noremap = true, silent = true })

-- Trigger code action (like Cmd + . in VS Code)
vim.keymap.set("n", "<D-.>", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })

-- Tab navigation
vim.keymap.set("n", "tl", "<cmd>bn<CR>", { desc = "[T]ab Left" })
vim.keymap.set("n", "th", "<cmd>bp<CR>", { desc = "[T]ab Right" })
