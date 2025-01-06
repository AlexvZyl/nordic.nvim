---@class Colors<T>: {none: T, black0: T, black1: T, black2: T, gray0: T, gray1: T, gray2: T, gray3: T, gray4: T, gray5: T, grey0: T, grey1: T, grey2: T, grey3: T, grey4: T, grey5: T, white0_normal: T, white0_reduce_blue: T, white0: T, white1: T, white2: T, white3: T, blue0: T, blue1: T, blue2: T, cyan: { base: T, bright: T, dim: T }, red: { base: T, bright: T, dim: T }, orange: { base: T, bright: T, dim: T }, yellow: { base: T, bright: T, dim: T }, green: { base: T, bright: T, dim: T }, magenta: { base: T, bright: T, dim: T }, bg: T, bg_dark: T, bg_sidebar: T, bg_statusline: T, bg_fold: T, bg_visual: T, border_fg: T, border_bg: T, fg: T, fg_bright: T, fg_dark: T, fg_sidebar: T, fg_fold: T, fg_selected: T, bg_float: T, fg_float: T, bg_float_border: T, fg_float_border: T, bg_popup: T, bg_selected: T, fg_popup: T, bg_popup_border: T, fg_popup_border: T, comment: T, error: T, warn: T, warning: T, hint: T, info: T, diff: { change0: T, change1: T, add: T, delete: T }, git: { add: T, delete: T, change: T }}

---@class Highlight
---@field fg string?
---@field bg string?
---@field style string?
---@field link string?

---@alias OnpaletteOverrideFn fun(palette: Colors<string>)
---@alias AfterPaletteOverrideFn fun(palette: Colors<string>)
---@alias HighlightOverrideFn fun(highlights: Highlight[], palette: Colors<string>)

---@class NordicOptions
---@field on_palette OnpaletteOverrideFn?
---@field after_palette AfterPaletteOverrideFn?
---@field on_highlight HighlightOverrideFn?

