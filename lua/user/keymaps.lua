-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- general
keymap("n", "<leader>z", "za", opts)
keymap("n", "<leader>t", ":e ~/org/todo.org<CR>", opts)
keymap("n", "<leader>w", ":w<CR>", opts)
if not vim.g.neovide then
    keymap("n", "<leader>q", ":q<CR>", opts)
else
    keymap("n", "<leader>q", ":%bd<CR>:Bdelete<CR>:Alpha<CR>", opts)
end

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- vimdiff merge
keymap("n", "<leader>ml", ":diffg RE<CR>", opts)
keymap("n", "<leader>mh", ":diffg LO<CR>", opts)
keymap("n", "<leader>mj", ":diffg BA<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>/", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)
keymap("i", "JL", "{}<ESC>i", opts)
keymap("i", "jl", "()<ESC>i", opts)


-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Plugins --
-- Vifm
keymap("n", "<leader>o", ":EditVifm<CR>", opts)

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
--[[ keymap("n", "<leader>e", ":e $MYVIMRC<CR>", opts) ]]

--Toggleterm
keymap("v", "<leader><cr>", ":ToggleTermSendVisualLines<CR>", opts)
keymap("n", "<leader><cr>", ":ToggleTermSendCurrentLine<CR>", opts)

-- Telescope
keymap("n", "<leader><Space>", ":Telescope find_files theme=dropdown<CR>", opts)
keymap("n", "<leader>r", ":Telescope oldfiles theme=dropdown<CR>", opts)
--[[ keymap("n", "<leader>r", ":source $MYVIMRC<CR>", opts) ]]
keymap("n", "<leader>a", ":Telescope live_grep theme=dropdown preview=true<CR>", opts)
keymap("n", "<leader>p", ":Telescope projects theme=dropdown<CR>", opts)
keymap("n", "<leader>;", ":Telescope commands theme=dropdown<CR>", opts)

-- Git
keymap("n", "<leader>g", ":lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment
keymap("n", "<leader>c", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap("x", "<leader>c", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')

-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)
