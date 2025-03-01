if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
    'Mythos-404/xmake.nvim',
    version = '^3',
    lazy = true,
    event = 'BufReadPost xmake.lua',
    config = true,
}
