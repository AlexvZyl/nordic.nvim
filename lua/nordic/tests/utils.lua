local assert_eq = require('nordic.utils').assert_eq
local U = require('nordic.utils')

local t1, t2, nested

-- Types.

assert_eq(U.none(), 'NONE', 'utils.none() should return "NONE"')
assert_eq(U.is_none('NONE'), true, 'U.is_none("NONE") should return true')
assert_eq(U.is_none('none'), true, 'U.is_none("none") should return true')
assert_eq(U.is_none('nil'), false, 'U.is_none("nil") should return false')
assert_eq(U.is_table('string'), false, 'U.is_table("string") should return false')
assert_eq(U.is_table(4), false, 'U.is_table(4) should return false')
assert_eq(U.is_table({}), true, 'U.is_table({}) should return true')

-- Table.

t1 = { a = 1 }
t2 = { b = 2 }
U.merge_inplace(t1, t2)
assert_eq(t1, { a = 1, b = 2 }, 'U.merge_inplace(t1, t2) basic merge')

t1 = { a = 1, b = 3 }
t2 = { b = 2, c = 4 }
U.merge_inplace(t1, t2)
assert_eq(t1, { a = 1, b = 2, c = 4 }, 'U.merge_inplace(t1, t2) overwriting values')

t1 = { a = 1, d = { x = 10 } }
t2 = { d = { y = 20 }, e = 5 }
U.merge_inplace(t1, t2)
assert_eq(t1, { a = 1, d = { x = 10, y = 20 }, e = 5 }, 'U.merge_inplace(t1, t2) nested tables')

nested = { y = 20 }
t1 = { d = nested, e = 5 }
t2 = { a = 1 }
U.merge_inplace(t1, t2)
assert_eq(t1['d'] ~= nested, true, 'U.merge_inplace(t1, t2) copy t1 nested values')

nested = { y = 20 }
t1 = { a = 1 }
t2 = { d = nested, e = 5 }
U.merge_inplace(t1, t2)
assert_eq(t1['d'] ~= nested, true, 'U.merge_inplace(t1, t2) copy t2 nested values')

assert_eq(U.merge({}, {}), {}, 'U.merge({}, {}) should return an empty table')
assert_eq(U.merge(nil, nil), {}, 'U.merge(nil, nil) should return an empty table')
assert_eq(U.merge(nil, { a = 1 }), { a = 1 }, 'U.merge(nil, {a = 1}) should return {a = 1}')
assert_eq(U.merge({ a = 1 }, nil), { a = 1 }, 'U.merge({a = 1}, nil) should return {a = 1}')
assert_eq(
    U.merge({ a = 1, b = 3 }, { b = 2, c = 4 }),
    { a = 1, b = 2, c = 4 },
    'U.merge({a = 1, b = 3}, {b = 2, c = 4}) should return {a = 1, b = 2, c = 4}'
)

-- Colors.

assert_eq({ U.hex_to_rgb('#191D24') }, { 25, 29, 36 }, 'U.hex_to_rgb("#191D24") should return 25, 29, 36')
assert_eq(U.rgb_to_hex(25, 29, 36), '#191D24', 'U.rgb_to_hex(25, 29, 36) should return "#191D24"')
assert_eq(U.blend('#FFFFFF', '#000000', 0.5), '#808080', 'U.blend("#FFFFFF", ""#000000", 0.5) should return "#808080"')
