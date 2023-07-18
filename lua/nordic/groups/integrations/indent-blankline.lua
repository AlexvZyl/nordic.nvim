local C = require 'nordic.colors'

return {

    IndentBlanklineChar = { fg = C.gray1 },
    IndentBlanklineContextChar = { fg = C.gray2 },
    IndentBlanklineContextStart = { link = 'IndentBlanklineContextChar' },
}
