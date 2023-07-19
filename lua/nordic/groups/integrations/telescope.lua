local C = require 'nordic.colors'
local O = require('nordic.config').options

-- Classic.
local groups = {

    TelescopeNormal = { bg = C.bg },
    TelescopePromptNormal = { bg = C.bg },
    TelescopeResultsNormal = { bg = C.bg },
    TelescopePreviewNormal = { bg = C.bg },
    TelescopePreviewLine = { bg = C.gray2 },

    TelescopeSelection = { bg = C.bg, fg = C.yellow.bright, bold = false },
    TelescopeSelectionCaret = { fg = C.yellow.bright, bg = C.bg, bold = true },

    TelescopePreviewTitle = { fg = C.white0, bg = C.bg, bold = true },
    TelescopeResultsTitle = { fg = C.white0, bg = C.bg, bold = true },
    TelescopePromptTitle = { fg = C.white0, bg = C.bg, bold = true },
    TelescopeTitle = { fg = C.white0, bg = C.bg, bold = true },

    TelescopeBorder = { fg = C.white0, bg = C.bg },
    TelescopePromptBorder = { fg = C.white0, bg = C.bg },
    TelescopeResultsBorder = { fg = C.white0, bg = C.bg },
    TelescopePreviewBorder = { fg = C.white0, bg = C.bg },

    TelescopeMatching = { bold = true },
    TelescopePromptPrefix = { bg = C.bg, fg = C.orange.bright },

    TelescopeMultiIcon = { fg = C.yellow.bright, bg = C.bg, bold = true },
    TelescopeMultiSelection = { bg = C.bg },
}

if O.telescope.style == 'flat' then
    groups.TelescopeNormal = { bg = C.black1 }
    groups.TelescopePromptNormal = { bg = C.black2 }
    groups.TelescopeResultsNormal = { bg = C.black1 }
    groups.TelescopePreviewNormal = { bg = C.black1 }

    groups.TelescopeSelection = { bg = C.black1, fg = C.yellow.bright }
    groups.TelescopeSelectionCaret = { fg = C.yellow.bright, bg = C.black1, bold = true }

    groups.TelescopePreviewTitle = { bg = C.blue2, fg = C.black, bold = true }
    groups.TelescopeResultsTitle = { bg = C.orange.base, fg = C.black, bold = true }
    groups.TelescopePromptTitle = { bg = C.orange.base, fg = C.black, bold = true }
    groups.TelescopeTitle = { bg = C.orange.base, fg = C.black, bold = true }

    groups.TelescopeBorder = { fg = C.border_float_fg, bg = C.black }
    groups.TelescopePromptBorder = { bg = C.black2, fg = C.border_float_fg }
    groups.TelescopeResultsBorder = { bg = C.black1, fg = C.border_float_fg }
    groups.TelescopePreviewBorder = { bg = C.black1, fg = C.border_float_fg }

    groups.TelescopeMultiIcon = { fg = C.yellow.bright, bg = C.black1, bold = true }
    groups.TelescopeMultiSelection = { bg = C.black1 }
    groups.TelescopePromptPrefix = { bg = C.black2, fg = C.orange.bright }

    groups.TelescopePreviewLine = { bg = C.gray1 }

end

return groups
