local M = {}

function M.get()
    local C = require('nordic.colors')
    local O = require('nordic.config').options

    local G = {}

    -- Classic.
    G.SnacksPicker = { link = 'TelescopeResultsNormal' }
    G.SnacksPickerTitle = { link = 'TelescopeTitle' }
    G.SnacksPickerBorder = { link = 'TelescopeBorder' }
    G.SnacksPickerMatch = { link = 'TelescopeMatching' }
    G.SnacksPickerPrompt = { link = 'TelescopePromptNormal' }
    G.SnacksPickerCursorLine = { link = 'TelescopeSelection' }
    G.SnacksPickerSelected = { link = 'TelescopeMultiIcon' }

    -- -- Flat.
    if O.snacks.picker.style == 'flat' then
        G.SnacksPicker = { link = 'TelescopeResultsNormal' }
        G.SnacksPickerInput = { link = 'TelescopePromptNormal' }

        G.SnacksPickerTitle = { link = 'TelescopeTitle' }
        G.SnacksPreviewTitle = { link = 'TelescopePreviewTitle' }

        G.SnacksPickerBorder = { link = 'TelescopeResultsBorder' }

        G.SnacksPickerPrompt = { fg = C.yellow.bright, bg = C.bg_float, bold = true }

        G.SnacksPickerCursorLine = { bg = C.bg_visual, fg = C.yellow.bright }
        G.SnacksPickerSelected = { link = 'TelescopeMultiIcon' }
    end

    return G
end

return M
