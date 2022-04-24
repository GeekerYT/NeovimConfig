-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['pylsp'].setup {
    cmd = {'pylsp'},
    filetypes = {"python"},
    capabilities = capabilities
}

require('lspconfig')['texlab'].setup {
    cmd = {'texlab'},
    filetypes = {"tex", "bib"},
    capabilities = capabilities,
    settings= {
        texlab = {
            build = {
                args = {"-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
                executable = "latexmk",
                forwardSearchAfter = false,
                onSave = true
            },
            bibtexFormatter = "texlab",
            latexFormatter = "latexindent",
            latexindent = {
                modifyLineBreaks = false
            },
            formatterLineLength = 80,
            forwardSearch = {
                args = {"%p"},
                executable = "evince"
            }
        }
    }
}
