require("toggleterm").setup {
  start_in_insert = true,
}

vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm size=10 direction=float<cr>")
vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm size=30 direction=horizontal<cr>")
vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>")

vim.keymap.set("t", '<esc>', [[<C-\><C-n>]])