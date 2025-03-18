local M = {}

function M.get()
    local C = require('nordic.colors')

    local G = {}

    G.LazyH1 = { fg = C.yellow.base, bold = true }
    G.LazyButtonActive = { link = 'LazyH1' }
    G.LazyButton = { fg = C.white0 }
    G.LazySpecial = { fg = C.yellow.base }
    G.LazyProgressDone = { fg = C.green.bright }
    G.LazyProgressTodo = { fg = C.gray4 }
    G.LazyCommitType = { fg = C.yellow.base }

    return G
end

return M
