local term_opts = { silent = true }              -- Standard options for the terminal
local opts = { noremap = true, silent = true }   -- Seems to be standard options
local keymap = vim.keymap.set
local bufopts = { noremap=true, silent=true, buffer=bufnr }

-- vim.g.mapleader = '\'

-- Modes
--   normal_mode  = 'n'
--   insert_mode  = 'i'
--   visual_mode  = 'v'
--   term_mode    = 't'
--   command_mode = 'c'
--   visual_block_mode = 'x'

-- Keys
--   A = Alt
--   S = Shift
--   C = Control
--   ESC = Escape
--   CR  = Enter / Return
--   Up, Down, Left, Right = Cursor keys


-- Stay in indent mode
keymap('v', ',', '<gv', opts)
keymap('v', '.', '>gv', opts)

-- Move text up and down
keymap('v', "<Down>", ":m '>+1<CR>gv=gv", opts)
keymap('v', "<Up>",   ":m '<-2<CR>gv=gv", opts)

-- Tabs
keymap("n", "<Tab>l", ":tabn <CR>", opts)
keymap("n", "<Tab>h", ":tabp <CR>", opts)
keymap("n", "<Tab>o", ":tabnew <CR>", opts)
keymap("n", "<Tab>w", ":tabclose <CR>", opts)

--
-- Plugins
--

-- nvim-tree
keymap("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", opts)
keymap("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", opts)
keymap("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", opts)

-- Telescope
keymap('n', '<C-p>', '<cmd>Telescope find_files <CR>', opts)
keymap('n', '<C-f>', '<cmd>Telescope live_grep <CR>', opts)
keymap('n', '<leader>fc', '<cmd>Telescope grep_string <CR>', opts)
keymap('n', '<leader>fb', '<cmd>Telescope buffers <CR>', opts)
keymap('n', '<leader>fh', '<cmd>Telescope help_tags <CR>', opts)

-- LSP
opts.desc = "Show LSP references"
keymap("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

opts.desc = "Go to declaration"
keymap("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

opts.desc = "Show LSP definitions"
-- keymap("n", "gd", "<cmd>:tab Telescope lsp_definitions<CR>", opts) -- show lsp definitions
keymap("n", "gd", "<cmd>tab split | Telescope lsp_definitions <CR>", {}) -- show lsp definitions

opts.desc = "Show LSP implementations"
keymap("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations

opts.desc = "Show LSP type definitions"
keymap("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

opts.desc = "See available code actions"
keymap({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {}) -- see available code actions, in visual mode will apply to selection

opts.desc = "Smart rename"
keymap("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

opts.desc = "Show buffer diagnostics"
keymap("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file

opts.desc = "Show line diagnostics"
keymap("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

opts.desc = "Go to previous diagnostic"
keymap("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

opts.desc = "Go to next diagnostic"
keymap("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer

opts.desc = "Show documentation for what is under cursor"
keymap("n", "K", vim.lsp.buf.hover, {}) -- show documentation for what is under cursor

opts.desc = "Restart LSP"
keymap("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary

keymap("n", "<leader>gf", vim.lsp.buf.format, {})


