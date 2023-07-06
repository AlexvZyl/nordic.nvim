local C = require 'nordic.colors'

return {

    texGroup = { fg = C.fg },
    texEnvArgName = { fg = C.cyan.base },
    texMathEnvArgName = { link = 'texEnvArgName' },
    texArg = { fg = C.cyan.base },
    texStyleItal = { fg = C.fg, italic = true },
    texPartArgTitle = { fg = C.cyan.base },
    texDelim = { fg = C.fg },
    texMathGroup = { fg = C.fg },
    texMathArg = { fg = C.fg },
    texMathZoneEnv = { fg = C.fg },
    texMathZoneTI = { fg = C.fg },
    texMathDelim = { fg = C.fg },
    texMathDelimZoneTI = { fg = C.blue2 },
    texMathSuper = { fg = C.fg },
    texFileArg = { fg = C.green.base },
    texRefArg = { fg = C.magenta.bright },
    texGroupError = { link = 'DiagnosticError' },
    texMathSub = { fg = C.fg },
    texCmdEnv = { fg = C.blue2 },
    texSpecialChar = { fg = C.orange.base },
    texLigature = { fg = C.fg },
    texFileOpt = { fg = C.fg },
    texVerbZone = { link = 'String' },
    texLstZone = { link = 'String' },

}
