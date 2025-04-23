local M = {}

function M.get()
    local C = require('nordic.colors')
    local O = require('nordic.config').options

    local G = {}

    -- Classic.
    G.SnacksPicker = { bg = C.bg }
    G.SnacksPickerInput = { bg = C.bg }
    G.SnacksPickerPreview = { bg = C.bg }
    G.SnacksPickerCursorLine = { bg = C.gray2 }
    G.SnacksPickerTitle = { fg = C.white0, bg = C.bg, bold = true }
    G.SnacksPickerBorder = { fg = C.white0, bg = C.bg }
    G.SnacksPickerMatch = { bg = C.gray1, fg = C.orange.bright }

    -- -- Flat.
    if O.snacks.picker.style == 'flat' then
        G.SnacksPicker = { bg = C.bg_float }
        G.SnacksPickerInput = { bg = C.black0 }
        G.SnacksPickerPreview = { bg = C.bg_float }

        G.SnacksPickerTitle = { bg = C.orange.base, fg = C.black0, bold = true }
        G.SnacksPreviewTitle = { bg = C.blue2, fg = C.black0, bold = true }

        G.SnacksPickerBorder = { fg = C.black0, bg = C.black0 }
        G.SnacksPickerInputBorder = { fg = C.black0, bg = C.black0 }
        G.SnacksPickerPreviewBorder = { bg = C.black0, fg = C.black0 }

        G.SnacksPickerCursorLine = { bg = C.gray3, bold = true }
        G.SnacksPickerListCursorLine = { link = 'SnacksPickerCursorLine' }
        G.SnacksPickerPreviewCursorLine = { link = 'SnacksPickerCursorLine' }
    end

    return G
end

return M
