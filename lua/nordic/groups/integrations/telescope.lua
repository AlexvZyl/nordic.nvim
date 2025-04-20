local M = {}

function M.get()
    local C = require('nordic.colors')
    local O = require('nordic.config').options

    local G = {}

    -- Classic.
    G.TelescopeNormal = { bg = C.bg }
    G.TelescopePromptNormal = { bg = C.bg }
    G.TelescopeResultsNormal = { bg = C.bg }
    G.TelescopePreviewNormal = { bg = C.bg }
    G.TelescopePreviewLine = { bg = C.gray2 }
    G.TelescopeSelection = { bg = C.bg, fg = C.yellow.bright, bold = false }
    G.TelescopeSelectionCaret = { fg = C.yellow.bright, bg = C.bg, bold = true }
    G.TelescopePreviewTitle = { fg = C.white0, bg = C.bg, bold = true }
    G.TelescopeResultsTitle = { fg = C.white0, bg = C.bg, bold = true }
    G.TelescopePromptTitle = { fg = C.white0, bg = C.bg, bold = true }
    G.TelescopeTitle = { fg = C.white0, bg = C.bg, bold = true }
    G.TelescopeBorder = { fg = C.white0, bg = C.bg }
    G.TelescopePromptBorder = { fg = C.white0, bg = C.bg }
    G.TelescopeResultsBorder = { fg = C.white0, bg = C.bg }
    G.TelescopePreviewBorder = { fg = C.white0, bg = C.bg }
    G.TelescopeMatching = { fg = C.orange.base, bold = true }
    G.TelescopePromptPrefix = { bg = C.bg, fg = C.orange.bright }
    G.TelescopeMultiIcon = { fg = C.yellow.bright, bg = C.bg, bold = true }
    G.TelescopeMultiSelection = { bg = C.bg }

    -- Flat.
    if O.telescope.style == 'flat' then
        G.TelescopeNormal = { bg = C.bg_float }
        G.TelescopePromptNormal = { bg = C.black2 }
        G.TelescopeResultsNormal = { bg = C.bg_float }
        G.TelescopePreviewNormal = { bg = C.bg_float }
        G.TelescopeSelection = { bg = C.bg_visual, fg = C.yellow.bright }
        G.TelescopeSelectionCaret = { fg = C.yellow.bright, bg = C.bg_float, bold = true }
        G.TelescopePreviewTitle = { bg = C.blue2, fg = C.black0, bold = true }
        G.TelescopeResultsTitle = { bg = C.orange.base, fg = C.black0, bold = true }
        G.TelescopePromptTitle = { bg = C.orange.base, fg = C.black0, bold = true }
        G.TelescopeTitle = { bg = C.orange.base, fg = C.black0, bold = true }
        G.TelescopeBorder = { fg = C.black0, bg = C.black0 }
        G.TelescopePromptBorder = { bg = C.black2, fg = C.black0 }
        G.TelescopeResultsBorder = { bg = C.bg_float, fg = C.black0 }
        G.TelescopePreviewBorder = { bg = C.bg_float, fg = C.black0 }
        G.TelescopeMultiIcon = { fg = C.yellow.bright, bg = C.bg_float, bold = true }
        G.TelescopeMultiSelection = { bg = C.bg_float }
        G.TelescopePromptPrefix = { bg = C.black2, fg = C.orange.bright }
        G.TelescopePreviewLine = { bg = C.gray1 }
    end

    return G
end

return M
