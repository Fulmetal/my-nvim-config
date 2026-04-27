--telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

--neo tree
vim.keymap.set('n', '<leader>ee', ':NvimTreeToggle<CR>', { desc = 'Toggle nvim-tree file explorer' })
vim.keymap.set('n', '<leader>ef', ':NvimTreeFocus<CR>', { desc = 'Focus nvim-tree file explorer' })

--neogit
vim.keymap.set('n', '<leader>gg', ':<cmd>Neogit<cr>', { desc = 'Open neogit' })
