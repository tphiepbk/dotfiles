local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
    auto_install = false,
    highlight = {
        enable = false,
    },
    indent = {
        enable = true,
    },
    ensure_installed = {
    },
    autotag = {
        enable = true,
    },
}

