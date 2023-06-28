-- 加载mason.nvim
local status, mason = pcall(require, "mason")
if not status then
    vim.notify("plugin mason not found")
    return
end

mason.setup({
    ui = {
        icon = {
            package_installed = "✓",
            package_pending = "➜",
            pachage_uninstalled = "✗",
        },
    },
})

require("config.mason.mason_lsp")         -- mason-lspconfig
require("config.mason.lsp")               -- nvim.lspconfig
--require("config.mason.null-ls")
--require("config.mason.dap")
