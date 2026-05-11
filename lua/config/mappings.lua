--telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.oldfiles, { desc = 'Telescope recent files' })
vim.keymap.set('n', '<leader>fd', builtin.lsp_document_symbols, { desc = 'Telescope document symbols' })
vim.keymap.set('n', '<leader>fc', function()
  require('telescope.builtin').find_files({
    cwd = vim.fn.stdpath('config'),
  })
end, { desc = 'Find files in Neovim config' })

--neo tree
vim.keymap.set('n', '<leader>ee', ':NvimTreeToggle<CR>', { desc = 'Toggle nvim-tree file explorer' })
vim.keymap.set('n', '<leader>ef', ':NvimTreeFocus<CR>', { desc = 'Focus nvim-tree file explorer' })

--neogit
vim.keymap.set('n', '<leader>gg', ':<cmd>Neogit<cr>', { desc = 'Open neogit' })

--copilot lua
vim.keymap.set("i", "<C-l>", function()
        local copilot = require("copilot.suggestion")
        if copilot.is_visible() then
            copilot.accept()
            return ""
        end
        return "<C-l>"
end, { expr = true, silent = true, desc = "Accept copilot suggestion" })

--navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = "Move to left window" })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = "Move to below window" })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = "Move to above window" })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = "Move to right window" })

--lazydocker
vim.keymap.set(
  { 'n', 't' },
  '<leader>ld',
  "<Cmd>lua require('lazydocker').toggle({ engine = 'docker' })<CR>",
  { desc = 'LazyDocker (docker)' }
)
vim.keymap.set(
  { 'n', 't' },
  '<leader>lp',
  "<Cmd>lua require('lazydocker').toggle({ engine = 'podman' })<CR>",
  { desc = 'LazyDocker (podman)' }
)

--toggleterm
vim.keymap.set('n', '<leader>tt', ':ToggleTerm<CR>', { desc = 'Toggle terminal' })

vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], { desc = "Exit terminal mode" })
-- vim.keymap.set('t', '<C-h>', '<C-w>h', { desc = "Move to left window" })
-- vim.keymap.set('t', '<C-j>', '<C-w>j', { desc = "Move to below window" })
-- vim.keymap.set('t', '<C-k>', '<C-w>k', { desc = "Move to above window" })
-- vim.keymap.set('t', '<C-l>', '<C-w>l', { desc = "Move to right window" })


-- local opts = {buffer = 0}
-- vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
-- vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], {desc = "Move to left window" })
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], {desc = "Move to below window" })
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], {desc = "Move to above window" })
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], {desc = "Move to right window" })
vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], {desc = "Move to other window" })
