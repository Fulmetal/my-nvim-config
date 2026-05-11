return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    opts = {
        pickers = {
            find_files = {
                hidden = true,
                no_ignore = false, --respect .gitignore
            },
            live_grep = {
                additional_args = function(_) return { "--hidden" } end,
            },
        },
        defaults = {
            file_ignore_patterns = {
                "^%.git/",
            },
        },
    },
}
