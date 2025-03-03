local M = {}

function M.get()
    local C = require('nordic.colors')
    local native = require('nordic.groups.native').get_groups()
    local G = {}

    G.BlinkCmpDoc = { fg = C.fg, bg = C.bg_float }
    G.BlinkCmpDocBorder = { fg = C.fg_float_border, bg = C.bg_float }
    G.BlinkCmpGhostText = { fg = C.gray5 }
    G.BlinkCmpKind = { fg = C.fg_dark, bg = C.none }
    G.BlinkCmpKindCodeium = { fg = C.blue2 }
    -- G.BlinkCmpKindCopilot = { fg = c.teal, }
    G.BlinkCmpKindDefault = { fg = C.fg_dark }
    G.BlinkCmpKindKeyword = { link = 'Keyword' }
    -- G.BlinkCmpKindText = { fg = C.fg_dark}
    G.BlinkCmpKindText = { fg = C.fg_dark }
    G.BlinkCmpKindFunction = { fg = native.Function.fg }
    -- G.BlinkCmpKindSupermaven = { fg = c.teal}
    -- G.BlinkCmpKindTabNine = { fg = c.teal}
    G.BlinkCmpLabel = { fg = C.fg, bg = C.none }
    G.BlinkCmpLabelDeprecated = { fg = C.gray5, bg = C.none, strikethrough = true }
    -- G.BlinkCmpLabelMatch = { fg = C.blue1, bg = C.none }
    G.BlinkCmpMenu = { fg = C.fg, bg = C.bg_float }
    G.BlinkCmpMenuBorder = { fg = C.bg, bg = C.bg_float }
    G.BlinkCmpMenuSelection = { fg = C.none, bg = C.bg_cursorline }
    G.BlinkCmpSignatureHelp = { fg = C.fg, bg = C.bg_float }
    G.BlinkCmpSignatureHelpBorder = { fg = C.bg, bg = C.bg_float }

    return G
end

return M
