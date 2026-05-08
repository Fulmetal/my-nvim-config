return {
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { "lua_ls", "rust_analyzer", "copilot" },
        },
        dependencies = {
            {
                "mason-org/mason.nvim", opts = {
                    registries = {
                        "github:mason-org/mason-registry",
                        "github:crashdummyy/mason-registry",
                    },
                }
            },
            "neovim/nvim-lspconfig",
        },
    },
    {
        "seblyng/roslyn.nvim",
        ---@module 'roslyn.config',
        ---@type RoslynNvimConfig
        ft = { "cs", "razor" },
        opts = {},
    },
    {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
            library = {
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    },
    {
        "saghen/blink.cmp",
        event = { "InsertEnter", "CmdwinEnter" },

        -- optional: provides snippets for the snippet source
        dependencies = { "rafamadriz/friendly-snippets" },

        -- use a release tag to download pre-built binaries
        version = "1.*",
        opts = {
            -- "default" (recommended) for mappings similar to built-in completions (C-y to accept)
            -- "super-tab" for mappings similar to vscode (tab to accept)
            -- "enter" for enter to accept
            -- "none" for no mappings
            --
            -- All presets have the following mappings:
            -- C-space: Open menu or open docs if already open
            -- C-n/C-p or Up/Down: Select next/previous item
            -- C-e: Hide menu
            -- C-k: Toggle signature help (if signature.enabled = true)
            --
            -- See :h blink-cmp-config-keymap for defining your own keymap
            keymap = { preset = "super-tab" },

            appearance = {
                -- "mono" (default) for "Nerd Font Mono" or "normal" for "Nerd Font"
                -- Adjusts spacing to ensure icons are aligned
                nerd_font_variant = "mono"
            },

            -- (Default) Only show the documentation popup when manually triggered
            completion = { documentation = { auto_show = true } },

            -- Default list of enabled providers defined so that you can extend it
            -- elsewhere in your config, without redefining it, due to `opts_extend`
            sources = {
                default = { "lazydev", "lsp", "path", "snippets", "buffer" },
                providers = {
                    lazydev = {
                        name = "LazyDev",
                        module = "lazydev.integrations.blink",
                        -- make lazydev completions top priority (see `:h blink.cmp`)
                        score_offset = 100,
                    },
                },
            },

            -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
            -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
            -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
            --
            -- See the fuzzy documentation for more information
            fuzzy = { implementation = "prefer_rust_with_warning" }
        },
        opts_extend = { "sources.default" }
    },
    {
        "folke/sidekick.nvim",
        keys = {
            -- {
            --     "<tab>",
            --     function()
            --         -- if there is a next edit, jump to it, otherwise apply it if any
            --         if not require("sidekick").nes_jump_or_apply() then
            --             return "<Tab>" -- fallback to normal tab
            --         end
            --     end,
            --     expr = true,
            --     desc = "Goto/Apply Next Edit Suggestion",
            -- },
            {
                "<c-.>",
                function() require("sidekick.cli").focus() end,
                desc = "Sidekick Focus",
                mode = { "n", "t", "i", "x" },
            },
            {
                "<leader>aa",
                function() require("sidekick.cli").toggle() end,
                desc = "Sidekick Toggle CLI",
            },
            {
                "<leader>as",
                function() require("sidekick.cli").select() end,
                -- Or to select only installed tools:
                -- require("sidekick.cli").select({ filter = { installed = true } })
                desc = "Select CLI",
            },
        }
    },
    {
        "sudo-tee/opencode.nvim",
        config = function()
            require("opencode").setup({})
        end,
        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "MeanderingProgrammer/render-markdown.nvim",
                opts = {
                    anti_conceal = { enabled = false },
                    file_types = { 'markdown', 'opencode_output' },
                },
                ft = { 'markdown', 'Avante', 'copilot-chat', 'opencode_output' },
            },
            -- Optional, for file mentions and commands completion, pick only one
            'saghen/blink.cmp',
            -- 'hrsh7th/nvim-cmp',

            -- Optional, for file mentions picker, pick only one
            -- 'folke/snacks.nvim',
            'nvim-telescope/telescope.nvim',
            -- 'ibhagwan/fzf-lua',
            -- 'nvim_mini/mini.nvim',
        },
    },
    {
        "zbirenbaum/copilot.lua",
        event = "InsertEnter",
        cmd = "Copilot",
        opts = {
            suggestion = {
                enabled = true,
                auto_trigger = true,
                keymap = {
                    accept = false,
                    -- accept = "<C-l>",   -- like VS Code
                    -- next = "<M-]>",
                    -- prev = "<M-[>",
                    -- dismiss = "<C-]>",
                },
            },
            panel = { enabled = false },
        },
    }
}
