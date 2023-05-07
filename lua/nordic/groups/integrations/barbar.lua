local c = require 'nordic.colors'
local blend = require 'nordic.utils'.blend

local barbar_bg = blend(c.gray0, c.black, 0.25)

return {

    -- Normals.
    BufferCurrent = { fg = c.white0, bg = c.gray0, bold = false },
    BufferVisible = { fg = c.white0, bg = barbar_bg },
    BufferInactive = { fg = c.gray3, bg = barbar_bg },

    -- Signs.
    BufferVisibleSign = { fg = c.black, bg = c.black, bold = true },
    BufferCurrentSign = { fg = c.orange.bright, bg = c.gray0, bold = true },
    BufferInactiveSign = { bg = c.black, fg = c.black },

    -- Mods.
    BufferCurrentMod = { fg = c.white0, bg = c.gray0, bold = true },
    BufferVisibleMod = { fg = c.white0, bg = c.black },

    -- Diagnostics.
    BufferVisibleError = { fg = c.red.bright, bg = c.black },

    -- Targets.
    BufferCurrentTarget = { fg = c.red.bright, bold = true },
    BufferVisibleTarget = { fg = c.red.bright, bold = true },
    BufferInactiveTarget = { bg = c.bg_dark, fg = c.red.bright, bold = true },
    BufferAlternateTarget = { fg = c.red.bright, bold = true }

    -- BufferCurrentIndex = { bg = C.surface1, fg = C.blue },
    -- BufferCurrentTarget = { bg = C.surface1, fg = C.red },
    -- BufferVisibleIndex = { bg = C.mantle, fg = C.blue },
    -- BufferVisibleTarget = { bg = C.mantle, fg = C.red },
    -- BufferInactive = { bg = C.mantle, fg = C.overlay0 },
    -- BufferInactiveIndex = { bg = C.mantle, fg = C.overlay0 },
    -- BufferInactiveTarget = { bg = C.mantle, fg = C.red },
    -- BufferTabpages = { bg = C.mantle, fg = C.none },
    -- BufferTabpage = { bg = C.mantle, fg = C.blue },
}
