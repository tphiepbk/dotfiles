local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- Disable autoformat for files
autocmd({ "FileType" }, {
    pattern = { "*" },
    callback = function()
        vim.b.autoformat = false
    end
})

-- Open NeoTree automatically
autocmd({ "VimEnter" }, {
    callback = function()
        vim.schedule(function()
            vim.cmd("Neotree")
            vim.cmd("wincmd p")
        end)
    end,
})

