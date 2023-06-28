local status, coq_nvim = pcall(require, "coq_nvim")
if not status then
    vim.notify("plugin coq_nvim not found")
    return
end

--require"coq".setup{}
--coq_nvim.setup(require"coq")
coq_nvim.setup{}
