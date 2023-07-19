local C = require 'nordic.colors'

return {
    LazyH1 = { fg = C.yellow.base, bold = true },
    LazyButtonActive = { link = 'LazyH1' },
    LazyButton = { fg = C.white0 },
    LazySpecial = { fg = C.yellow.base },

    LazyProgressDone = { fg = C.green.bright },
    LazyProgressTodo = { fg = C.gray4 },

    LazyCommitType = { fg = C.yellow.base },
}
