# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  xam

suite "test xam structures":

  test "test getFieldNames":
    let t0 = (some: "field")
    check(t0.getFieldNames() == @["some"])
    let t1 = ()
    check(t1.getFieldNames().len == 0)

  test "test hasField":
    let t = (some: "field")
    check(t.hasField("some") == true)
    check(t.hasField("blah") == false)
    check(().hasField("blah") == false)

  test "test haveFields":
    let t0 = (some: "field")
    check(t0.haveFields() == false)
    check(t0.haveFields("some") == true)
    let t1 = (some: "field", another: "one")
    check(t1.haveFields("some", "another") == true)
    check(t1.haveFields("some", "blah") == false)

