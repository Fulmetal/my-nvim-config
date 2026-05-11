return {
    {
        "goolord/alpha-nvim",
        config = function ()
            local alpha = require'alpha'
            local dashboard = require'alpha.themes.dashboard'
            require'alpha.term'
            dashboard.section.terminal = {
                type = "terminal",
                command = "ascii-image-converter " .. vim.fn.stdpath("config") .. "/fulmetal_avatar.jpg -C -c",
                -- command = "ascii-image-converter ~/Pictures/fulmetal_avatar.jpg -C -c | cat",
                width = 70,
                height = 35,
                opts = {
                    redraw = true,
                    window_config = {
                        col = math.floor((vim.o.columns - 70) / 2) + 1
                    }
                }

            }
            dashboard.section.header.val =
            {
                "                                                     ",
                "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
                "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
                "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
                "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
                "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
                "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
                "                                                     ",
            }
            -- dashboard.section.buttons.val = {
            --     dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
            --     dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
            -- }
            local handle = io.popen('fortune')
            local fortune = handle:read("*a")
            handle:close()
            dashboard.section.footer.val = fortune

            dashboard.config.opts.noautocmd = true
            dashboard.config.opts.margin = 0

            dashboard.config.layout = {
                dashboard.section.header,
                { type = "padding", val = 3 },
                dashboard.section.terminal,
                { type = "padding", val = 3 },
                dashboard.section.buttons,
                dashboard.section.footer,
            }

            vim.cmd[[autocmd User AlphaReady echo 'ready']]

            alpha.setup(dashboard.config)
        end
    },
};
