-- Adapted from [tokyonight](https://github.com/folke/tokyonight.nvim)
--
-- Tokyonight is licensed under [Apache License 2.0](https://raw.githubusercontent.com/folke/tokyonight.nvim/refs/heads/main/LICENSE)
--
-- Changes:
--      - Adjusted the format of M.platforms
--      - Changed variable names (mostly from extra -> platform)
--      - Simplified code to work better for just one color scheme "flavor"
--      - Move `write` function to `utils.lua`
local U = require('nordic.utils')

local M = {}

-- stylua: ignore
---@type table<string, {ext: string, url:string, subdir?: string}>
M.platforms = {
    alacritty   = { ext = "toml", url = "https://alacritty.org/config-alacritty.html#colors" },
    fish        = { ext = "theme", url = "https://fishshell.com/docs/current/interactive.html#syntax-highlighting" },
    foot        = { ext = "ini", url = "https://codeberg.org/dnkl/foot" },
    ghostty     = { ext = "", url = "https://github.com/ghostty-org/ghostty" },
    iTerm2      = { ext = "itermcolors", url = "https://iterm2.com/" },
    kitty       = { ext = "conf", url = "https://sw.kovidgoyal.net/kitty/conf.html" },
    konsole     = { ext = "colorscheme", url = "https://konsole.kde.org/" },
    wezterm     = { ext = "toml", url = "https://wezfurlong.org/wezterm/config/files.html" },
    ["windows-terminal"] = { ext = "json", url = "https://aka.ms/terminal-documentation" },
}

function M.setup()
    local C = require('nordic.colors')

    ---@type string[]
    local platform_names = vim.tbl_keys(M.platforms)
    table.sort(platform_names)

    for _, platform in ipairs(platform_names) do
        local info = M.platforms[platform]
        local plugin = require('nordic.platforms.' .. platform)
        local fname = platform .. (info.subdir and '/' .. info.subdir .. '/' or '') .. '/nordic' .. '.' .. info.ext
        fname = string.gsub(fname, '%.$', '') -- remove trailing dot when no extension

        print('[write] ' .. fname)
        U.write('platforms/' .. fname, plugin.generate(C))
    end
end

return M
