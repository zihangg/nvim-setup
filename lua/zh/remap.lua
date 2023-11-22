vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Aerial
vim.keymap.set("n", "<C-a>", "<Cmd>AerialToggle!<Cr>")

-- Neotree
vim.keymap.set("n", "<C-b>", vim.cmd.Neotree)

-- Split screen & Navigation
vim.keymap.set("n", "<leader>v", ":vsplit<CR><C-w>l", { noremap = true })
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>", { noremap = true })
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>", { noremap = true })
