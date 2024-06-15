local assert_eq = require('nordic.tests').assert_eq
local U = require('nordic.utils')

-- none
assert_eq(U.none(), 'NONE', 'utils.none() should return "NONE"')

-- is_none
assert_eq(U.is_none('NONE'), true, 'U.is_none("NONE") should return true')
assert_eq(U.is_none('none'), true, 'U.is_none("none") should return true')
assert_eq(U.is_none('nil'), false, 'U.is_none("nil") should return false')

-- hex_to_rgb
assert_eq({ U.hex_to_rgb('#191D24') }, {25, 29, 36}, 'M.hex_to_rgb("#191D24") should return 25, 29, 36')


