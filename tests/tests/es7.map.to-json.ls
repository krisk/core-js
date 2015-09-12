{module, test} = QUnit
module \ES7

test 'Map#toJSON' (assert)->
  assert.ok typeof! Map::toJSON is \Function, 'Is function'
  assert.ok /native code/.test(Map::toJSON), 'looks like native'
  if JSON?
    assert.strictEqual JSON.stringify(new Map [[\a \b], [\c \d]] ), '[["a","b"],["c","d"]]', 'Works'