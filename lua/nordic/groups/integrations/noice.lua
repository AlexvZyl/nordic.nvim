local M = {}

function M.get()
    local C = require('nordic.colors')
    local O = require('nordic.config').options

    local G = {}

    G.NoiceLspProgressTitle = { fg = C.yellow.base, bg = C.bg, bold = true }
    G.NoiceLspProgressClient = { fg = C.gray4, bg = C.bg }
    G.NoiceLspProgressSpinner = { fg = C.cyan.bright, bg = C.bg }
    G.NoiceFormatProgressDone = { bg = C.green.bright, fg = C.black0 }
    G.NoiceFormatProgressTodo = { bg = C.gray5, fg = C.black0 }
    G.NoiceCmdline = { bg = C.bg_dark, fg = C.fg }
    G.NoiceCmdlineIcon = { bg = C.bg_float, fg = C.yellow.base }
    G.NoiceCmdlineIconSearch = { bg = C.bg_dark, fg = C.yellow.base }
    G.NoicePopupBorder = { fg = C.black0, bg = C.bg_float }
    G.NoiceCmdlinePopupBorder = { link = 'NoicePopupBorder' }
    G.NoiceCmdlinePopupBorderSearch = { link = 'NoicePopupBorder' }
    G.NoiceCmdlinePopup = { bg = C.bg_float }

    if O.noice.style == 'classic' then
        G.NoiceCmdline = { bg = C.bg, fg = C.cyan.base }
        G.NoiceCmdlinePopup = { bg = C.bg }
        G.NoicePopupBorder = { bg = C.bg, fg = C.cyan.base }
        G.NoiceCmdlineIcon = { bg = C.bg, fg = C.yellow.bright }
    end

    return G
end

return M
