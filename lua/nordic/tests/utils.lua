local assert_eq = require('nordic.tests').assert_eq
local U = require('nordic.utils')

-- none
assert_eq(U.none(), 'NONE', 'utils.none() should return "NONE"')

-- is_none
assert_eq(U.is_none('NONE'), true, 'U.is_none("NONE") should return true')
assert_eq(U.is_none('none'), true, 'U.is_none("none") should return true')
assert_eq(U.is_none('nil'), false, 'U.is_none("nil") should return false')

-- merge
assert_eq(U.merge({}, {}), {}, 'M.merge({}, {}) should return an empty table')

assert_eq(U.merge(nil, nil), {}, 'M.merge(nil, nil) should return an empty table')

assert_eq(U.merge(nil, {a = 1}), {a = 1}, 'M.merge(nil, {a = 1}) should return {a = 1}')
assert_eq(U.merge({a = 1}, nil), {a = 1}, 'M.merge({a = 1}, nil) should return {a = 1}')

assert_eq(U.merge({a = 1, b = 3}, {b = 2, c = 4}), {a = 1, b = 2, c = 4}, 'M.merge({a = 1, b = 3}, {b = 2, c = 4}) should return {a = 1, b = 2, c = 4}')

-- hex_to_rgb
assert_eq({ U.hex_to_rgb('#191D24') }, {25, 29, 36}, 'M.hex_to_rgb("#191D24") should return 25, 29, 36')


