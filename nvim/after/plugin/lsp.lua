local lsp = require('lsp-zero')

lsp.preset('recommended')

-- python
lsp.configure('pyright', {
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                -- Set the Python interpreter path
                pythonPath = python_path
            }
        }
    }
})

-- C/C++
lsp.configure('clangd')

-- ruby
lsp.configure('solargraph', {
    settings = {
        solargraph = {
            diagnostics = true
        }
    }
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({select=true}),
    ['<C-Space>'] = cmp.mapping.complete(),
})

lsp.on_attach(function(client, bufnr)
    print("help")
  local opts = {buffer = bufnr, remap = false}
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
end)

lsp.setup()
