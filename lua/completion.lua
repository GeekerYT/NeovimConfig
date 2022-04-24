local cmp = require "cmp"
cmp.setup(
    {
        snippet = {
            -- REQUIRED - you must specify a snippet engine
            expand = function(args)
                -- ultisnip
                vim.fn["UltiSnips#Anon"](args.body)
            end
        },
        mapping = {
            ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
            ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
            ['<CR>'] = cmp.mapping.confirm({select = true }), 
        },
        sources = cmp.config.sources(
            {
                {name = "nvim_lsp"},
                {name = "buffer"}
            }
        )
    }
)


-- nvim-cmp for commands
cmp.setup.cmdline(
    "/",
    {
        sources = {
            {name = "buffer"}
        }
    }
)

