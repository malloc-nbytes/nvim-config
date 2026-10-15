-- Preserve the normal-mode shortcuts from ~/.vimrc.
local map = vim.keymap.set

-- Basic
map("n", "<leader>fs", "<cmd>write<cr>", { desc = "Save File" })
map("n", "<leader>tw", "<cmd>%s/\\s\\+$//e<cr>", { desc = "Trim Trailing Whitespace" })
map("n", "<leader>fj", "<cmd>Explore<cr>", { desc = "File Explorer" })

-- Windows
map("n", "<leader>w-", "<cmd>split<cr>", { desc = "Split Window Below" })
map("n", "<leader>w/", "<cmd>vsplit<cr>", { desc = "Split Window Right" })
map("n", "<leader>wd", "<cmd>quit<cr>", { desc = "Close Window" })
map("n", "<leader>wo", "<c-w><c-w>", { desc = "Other Window" })
map("n", "<leader>wm", "<cmd>only<cr>", { desc = "Maximize Window" })

-- Buffers
map("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "Previous Buffer" })
map("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Delete Buffer" })

-- Other
map("n", "<leader>'", "<cmd>terminal<cr>", { desc = "Terminal" })
