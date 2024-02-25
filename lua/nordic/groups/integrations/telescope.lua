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
    groups.TelescopeNormal = { bg = C.bg_float }
    groups.TelescopePromptNormal = { bg = C.black2 }
    groups.TelescopeResultsNormal = { bg = C.bg_float }
    groups.TelescopePreviewNormal = { bg = C.bg_float }

    groups.TelescopeSelection = { bg = C.bg_float, fg = C.yellow.bright }
    groups.TelescopeSelectionCaret = { fg = C.yellow.bright, bg = C.bg_float, bold = true }

    groups.TelescopePreviewTitle = { bg = C.blue2, fg = C.black0, bold = true }
    groups.TelescopeResultsTitle = { bg = C.orange.base, fg = C.black0, bold = true }
    groups.TelescopePromptTitle = { bg = C.orange.base, fg = C.black0, bold = true }
    groups.TelescopeTitle = { bg = C.orange.base, fg = C.black0, bold = true }

    groups.TelescopeBorder = { fg = C.black0, bg = C.black0 }
    groups.TelescopePromptBorder = { bg = C.black2, fg = C.black0 }
    groups.TelescopeResultsBorder = { bg = C.bg_float, fg = C.black0 }
    groups.TelescopePreviewBorder = { bg = C.bg_float, fg = C.black0 }

    groups.TelescopeMultiIcon = { fg = C.yellow.bright, bg = C.bg_float, bold = true }
    groups.TelescopeMultiSelection = { bg = C.bg_float }
    groups.TelescopePromptPrefix = { bg = C.black2, fg = C.orange.bright }

    groups.TelescopePreviewLine = { bg = C.gray1 }
end

return groups
