vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)

-- horizonal split
vim.keymap.set("n", "<leader>v", "<cmd>vsplit<CR>")

-- jj to ESC
vim.keymap.set("i", "jj", "<Esc>")

-- Insert blank line without entering insert mode
vim.keymap.set("n", "<leader>o", "o<Esc>")
vim.keymap.set("n", "<leader>O", "O<Esc>")

-- Move visual highlighted blocks up and down with J/K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join a line but keep your cursor in place
vim.keymap.set("n", "J", "mzJ`z")

-- Jump down and up through the file
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor in the middle while searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Delete the selected things into void register, paste and replace text, and retain copy buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete item into void register
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Disable this menu
vim.keymap.set("n", "Q", "<nop>")

-- Display LspInfo
vim.keymap.set("n", "<leader>l", "<cmd>LspInfo<CR>")

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Open file shortcuts
vim.keymap.set("n", "<leader>aws", "<cmd>e ~/.aws/config<CR>");
vim.keymap.set("n", "<leader>cred", "<cmd>e ~/.aws/credentials<CR>");
vim.keymap.set("n", "<leader>rm", "<cmd>e ~/.config/nvim/lua/sean/remap.lua<CR>");
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/sean/packer.lua<CR>");

-- Gmail ctl
vim.keymap.set("n", "<leader>gmail", "<cmd>e ~/.gmailctl/config.jsonnet<CR>"); -- open config file
vim.keymap.set("n", "<leader>gca", "<cmd>terminal gmailctl apply <CR>");               -- gmailctl apply

-- Dank
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

--- Easier to write mappings
local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Fast saving with <leader> and s
map('n', '<leader>w', ':w<CR>')

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':qa!<CR>')

-- NvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>')            -- open/close
map('n', '<leader>f', ':NvimTreeRefresh<CR>')       -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>')      -- search file

-- Terraform
map("n", "<leader>ti", ":!terraform init<CR>")
map("n", "<leader>tv", ":!terraform validate<CR>")
map("n", "<leader>tp", ":!terraform plan<CR>")
map("n", "<leader>taa", ":!terraform apply -auto-approve<CR>")
