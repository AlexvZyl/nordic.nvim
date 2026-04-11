local M = {}

function M.get()
    local G = {}

    -- Window highlight groups.
    G.SnacksPicker = { link = 'PickerNormal' }
    G.SnacksPickerBorder = { link = 'PickerBorder' }
    G.SnacksPickerTitle = { link = 'PickerTitle' }
    G.SnacksPickerList = { link = 'PickerResultsNormal' }
    G.SnacksPickerListBorder = { link = 'PickerResultsBorder' }
    G.SnacksPickerListTitle = { link = 'PickerResultsTitle' }
    G.SnacksPickerInput = { link = 'PickerPromptNormal' }
    G.SnacksPickerInputBorder = { link = 'PickerPromptBorder' }
    G.SnacksPickerInputTitle = { link = 'PickerPromptTitle' }
    G.SnacksPickerPreview = { link = 'PickerPreviewNormal' }
    G.SnacksPickerPreviewBorder = { link = 'PickerPreviewBorder' }
    G.SnacksPickerPreviewTitle = { link = 'PickerPreviewTitle' }

    -- Content highlight groups.
    G.SnacksPickerMatch = { link = 'PickerMatching' }
    G.SnacksPickerPrompt = { link = 'PickerPromptPrefix' }
    G.SnacksPickerSelected = { link = 'PickerMultiIcon' }
    G.SnacksPickerCursorLine = { link = 'PickerSelection' }
    G.SnacksPickerListCursorLine = { link = 'PickerSelection' }

    return G
end

return M
