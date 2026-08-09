require "nvchad.mappings"

local map = vim.keymap.set

map("n", "<M-Down>", ":m .+1<CR>==", { desc = "Mover linha para baixo" })
map("i", "<M-Down>", "<Esc>:m .+1<CR>==gi", { desc = "Mover linha para baixo" })
map("v", "<M-Down>", ":m '>+1<CR>gv=gv", { desc = "Mover bloco para baixo" })

map("n", "<M-Up>", ":m .-2<CR>==", { desc = "Mover linha para cima" })
map("i", "<M-Up>", "<Esc>:m .-2<CR>==gi", { desc = "Mover linha para cima" })
map("v", "<M-Up>", ":m '<-2<CR>gv=gv", { desc = "Mover bloco para cima" })
