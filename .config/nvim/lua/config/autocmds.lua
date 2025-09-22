local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- Disable autoformat for files
autocmd({ "FileType" }, {
    pattern = { "*" },
    callback = function()
        vim.b.autoformat = false
    end
})

-- Open NeoTree automatically when a buffer with realfile is open
autocmd({ "BufReadPost" }, {
    pattern = { "*" },
    callback = function()
        vim.schedule(function()
            vim.cmd("Neotree reveal_force_cwd")
            vim.cmd("wincmd p")
        end)
    end,
})
