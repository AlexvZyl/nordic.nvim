local C = require 'nordic.colors'
local O = require('nordic.config').options

-- Classic.
local groups = {

    TelescopeNormal = { bg = C.bg },
    TelescopePromptNormal = { bg = C.bg },
    TelescopeResultsNormal = { bg = C.bg },
    TelescopePreviewNormal = { bg = C.bg },

    TelescopeSelection = { bg = C.bg_selected, fg = C.fg_selected, bold = false },
    TelescopeSelectionCaret = { fg = C.fg_selected, bg = C.bg_selected, bold = true },

    TelescopePreviewTitle = { fg = C.border_float_fg, bg = C.bg, bold = true },
    TelescopeResultsTitle = { fg = C.border_float_fg, bg = C.bg, bold = true },
    TelescopePromptTitle = { fg = C.border_float_fg, bg = C.bg, bold = true },
    TelescopeTitle = { fg = C.border_float_fg, bg = C.bg, bold = true },

    TelescopeBorder = { fg = C.border_float_fg, bg = C.bg },
    TelescopePromptBorder = { fg = C.border_float_bg, bg = C.bg },
    TelescopeResultsBorder = { fg = C.border_float_bg, bg = C.bg },
    TelescopePreviewBorder = { fg = C.border_float_bg, bg = C.bg },

    TelescopeMatching = { bold = true },
    TelescopePromptPrefix = { bg = C.bg, fg = C.orange.bright },

    TelescopeMultiIcon = { fg = C.yellow.bright, bg = C.bg, bold = true },
    TelescopeMultiSelection = { bg = C.bg },

}

if O.telescope.style == 'flat' then

    groups.TelescopeNormal = { bg = C.black1 }
    groups.TelescopePromptNormal = { bg = C.black }
    groups.TelescopeResultsNormal = { bg = C.black1 }
    groups.TelescopePreviewNormal = { bg = C.black1 }

    groups.TelescopeSelection = { bg = C.black1, fg = C.yellow.bright }
    groups.TelescopeSelectionCaret = { fg = C.yellow.bright, bg = C.black1, bold = true }

    groups.TelescopePreviewTitle = { bg = C.blue2, fg = C.black, bold = true }
    groups.TelescopeResultsTitle = { bg = C.orange.base, fg = C.black, bold = true }
    groups.TelescopePromptTitle = { bg = C.orange.base, fg = C.black, bold = true }
    groups.TelescopeTitle = { bg = C.orange.base, fg = C.black, bold = true }

    groups.TelescopeBorder = { fg = C.border_float_fg, bg = C.black }
    groups.TelescopePromptBorder = { bg = C.black, fg = C.border_float_fg }
    groups.TelescopeResultsBorder = { bg = C.black1, fg = C.border_float_fg }
    groups.TelescopePreviewBorder = { bg = C.black1, fg = C.border_float_fg }

    groups.TelescopeMultiIcon = { fg = C.yellow.bright, bg = C.black1, bold = true }
    groups.TelescopeMultiSelection = { bg = C.black1 }
    groups.TelescopePromptPrefix = { bg = C.black, fg = C.orange.bright }

end

return groups
