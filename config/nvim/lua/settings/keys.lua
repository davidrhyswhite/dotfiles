-- set <leader> to a space bar.
vim.g.mapleader = " "

-- Exit to netrw
vim.keymap.set("n", "<leader>yv", vim.cmd.Ex)

-- Toggle project tree
vim.api.nvim_set_keymap("n", "<C-h>", ":NvimTreeToggle<cr>", { silent = true, noremap = true })

-- Write the current buffer (file)
vim.keymap.set("n", "<leader>w", ":w<cr>")

-- Quit the current buffer eg. term, file, git
vim.keymap.set("n", "<leader><leader>", ":q<cr>")

-- Write and quit the current buffer (file)
vim.keymap.set("n", "<leader>w<leader>", ":wq<cr>")
