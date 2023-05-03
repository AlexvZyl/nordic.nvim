local c = require 'nordic.colors'

return {

    BufferCurrent = {
        fg = c.white0,
        bg = c.gray0,
        bold = false,
    },

    BufferCurrentSign = {
        fg = c.orange.bright,
        bg = c.gray0,
        bold = true,
    },

    BufferCurrentMod = {
        fg = c.white0,
        bg = c.gray0,
        bold = true,
    },

    BufferVisible = {
        fg = c.white0,
        bg = c.black,
    },

    BufferVisibleSign = {
        fg = c.black,
        bg = c.black,
        bold = true,
    },

    BufferVisibleMod = {
        fg = c.white0,
        bg = c.black,
    },

    BufferVisibleError = {
        fg = c.red.bright,
        bg = c.black,
    },

    BufferInactive = {
        fg = c.gray4,
        bg = c.black,
    },

    BufferCurrentTarget = {
        fg = c.red.bright,
        bold = true,
    },
    BufferVisibleTarget = {
        fg = c.red.bright,
        bold = true
    },
    BufferInactiveTarget = {
        bg = c.bg_dark,
        fg = c.red.bright,
        bold = true
    },
    BufferAlternateTarget = {
        fg = c.red.bright,
        bold = true
    }

    -- BufferCurrentIndex = { bg = C.surface1, fg = C.blue },
    -- BufferCurrentTarget = { bg = C.surface1, fg = C.red },
    -- BufferVisibleIndex = { bg = C.mantle, fg = C.blue },
    -- BufferVisibleTarget = { bg = C.mantle, fg = C.red },
    -- BufferInactive = { bg = C.mantle, fg = C.overlay0 },
    -- BufferInactiveIndex = { bg = C.mantle, fg = C.overlay0 },
    -- BufferInactiveSign = { bg = C.mantle, fg = C.blue },
    -- BufferInactiveTarget = { bg = C.mantle, fg = C.red },
    -- BufferTabpages = { bg = C.mantle, fg = C.none },
    -- BufferTabpage = { bg = C.mantle, fg = C.blue },
}
