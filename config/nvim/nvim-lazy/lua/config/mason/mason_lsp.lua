local status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status then
    vim.notify("plugins mason-lspconfig not foudn")
    return
end

mason_lspconfig.setup({
    -- A list of servers to automatically install if they're not already installed
    -- 语言服务
    ensure_installed = { 
        -- server name          -- language         -- substitute
        'clangd',               -- C and C++
        --'cmake',              -- CMake            neocmake
        --'html',                 -- html
        'cssls',                -- css              cssmodules_ls, unocss
        'vtsls',              -- javascript       quick_lint_js, tsserver, 
        'pylsp',                -- python           pyre, pyright, pylyzer, sourcery, ruff_lsp
        --'sqlls',              -- SQL
        --'jdtls',              -- java             java_language_server
        --'csharp_ls',          -- C#
        --'gopls',              -- Go
        'lua_ls',               -- Lua
        --'rust_analyzer'       -- Rust
    },
})
