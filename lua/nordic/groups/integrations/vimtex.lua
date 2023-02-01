local c = require 'nordic.colors'

return {
    texEnvArgName = { fg = c.cyan.base },
    texMathEnvArgName = { link = 'texEnvArgName' },
    texArg = { fg = c.blue2 },
    texPartArgTitle = { fg = c.blue2 },
    texDelim = { fg = c.fg },
    texMathGroup = { fg = c.fg },
    texMathArg = { fg = c.fg },
    texMathZoneEnv = { fg = c.fg },
    texMathZoneTI = { fg = c.fg },
    texMathSuper = { fg = c.fg },
    texFileArg = { fg = c.green.base },
    texRefArg = { fg = c.magenta.bright },
    texGroupError = { link = 'DiagnosticError' }
}
