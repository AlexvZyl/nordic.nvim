local C = require 'nordic.colors'

return {

    NotifyERRORBorder = { fg = C.error },
    NotifyERRORIcon = { fg = C.error },
    NotifyERRORTitle = { fg = C.error, bold = true },
    NotifyERRORBody = { fg = C.fg },

    NotifyWARNBorder = { fg = C.warn },
    NotifyWARNIcon = { fg = C.warn },
    NotifyWARNTitle = { fg = C.warn, bold = true },
    NotifyWARNBody = { fg = C.fg },

    NotifyINFOBorder = { fg = C.info },
    NotifyINFOIcon = { fg = C.info },
    NotifyINFOTitle = { fg = C.info, bold = true },
    NotifyINFOBody = { fg = C.fg },

    NotifyDEBUGBorder = { fg = C.orange.bright },
    NotifyDEBUGIcon = { fg = C.orange.bright },
    NotifyDEBUGTitle = { fg = C.orange.bright, bold = true },
    NotifyDEBUGBody = { fg = C.fg },

    NotifyTRACEBorder = { fg = C.gray5 },
    NotifyTRACEIcon = { fg = C.gray5 },
    NotifyTRACETitle = { fg = C.gray5, bold = true },
    NotifyTRACEBody = { fg = C.fg },

}
