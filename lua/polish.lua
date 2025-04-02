if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
    extension = {
        foo = 'fooscript',
    },
    filename = {
        ['Foofile'] = 'fooscript',
    },
    pattern = {
        ['~/%.config/foo/.*'] = 'fooscript',
    },
}

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        vim.keymap.set("n", "K", function()
            vim.lsp.buf.hover({
                border = "single", -- 强制边框
                focusable = true
            })
        end, { buffer = args.buf })
    end
})
