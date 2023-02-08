local c = require 'nordic.colors'

return {
    texEnvArgName = { fg = c.cyan.base },
    texMathEnvArgName = { link = 'texEnvArgName' },
    texArg = { fg = c.cyan.base },
    texPartArgTitle = { fg = c.cyan.base },
    texDelim = { fg = c.fg },
    texMathGroup = { fg = c.fg },
    texMathArg = { fg = c.fg },
    texMathZoneEnv = { fg = c.fg },
    texMathZoneTI = { fg = c.fg },
    texMathDelim = { fg = c.fg },
    texMathDelimZoneTI = { fg = c.blue2 },
    texMathSuper = { fg = c.fg },
    texFileArg = { fg = c.green.base },
    texRefArg = { fg = c.magenta.bright },
    texGroupError = { link = 'DiagnosticError' },
    texMathSub = { fg = c.fg },
}
