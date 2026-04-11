local M = {}

function M.get()
    local G = {}

    G.TelescopeNormal = { link = 'PickerNormal' }
    G.TelescopePromptNormal = { link = 'PickerPromptNormal' }
    G.TelescopeResultsNormal = { link = 'PickerResultsNormal' }
    G.TelescopePreviewNormal = { link = 'PickerPreviewNormal' }
    G.TelescopePreviewLine = { link = 'PickerPreviewLine' }
    G.TelescopeSelection = { link = 'PickerSelection' }
    G.TelescopeSelectionCaret = { link = 'PickerSelectionCaret' }
    G.TelescopePreviewTitle = { link = 'PickerPreviewTitle' }
    G.TelescopeResultsTitle = { link = 'PickerResultsTitle' }
    G.TelescopePromptTitle = { link = 'PickerPromptTitle' }
    G.TelescopeTitle = { link = 'PickerTitle' }
    G.TelescopeBorder = { link = 'PickerBorder' }
    G.TelescopePromptBorder = { link = 'PickerPromptBorder' }
    G.TelescopeResultsBorder = { link = 'PickerResultsBorder' }
    G.TelescopePreviewBorder = { link = 'PickerPreviewBorder' }
    G.TelescopeMatching = { link = 'PickerMatching' }
    G.TelescopePromptPrefix = { link = 'PickerPromptPrefix' }
    G.TelescopeMultiIcon = { link = 'PickerMultiIcon' }
    G.TelescopeMultiSelection = { link = 'PickerMultiSelection' }

    return G
end

return M
