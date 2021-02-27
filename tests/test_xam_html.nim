# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  xam

suite "test xam html":

  test "test parseShorthand":
    check(parseShorthand("") == nil)
    let v = parseShorthand("div")
    check(v != nil)
    check(v.tag == "div")
    check(v.id == "")
    check(v.classes.len == 0)
    let w = parseShorthand(".some-class")
    check(w != nil)
    check(w.tag == "div")
    check(w.id == "")
    check(w.classes.len == 1)
    check(w.classes[0] == "some-class")
    let x = parseShorthand("textarea#hey.classA.classB")
    check(x != nil)
    check(x.tag == "textarea")
    check(x.id == "hey")
    check(x.classes.len == 2)
    check(x.classes[0] == "classA")
    check(x.classes[1] == "classB")
    let y = parseShorthand("#hey2.classC.classD")
    check(y != nil)
    check(y.tag == "div")
    check(y.id == "hey2")
    check(y.classes.len == 2)
    check(y.classes[0] == "classC")
    check(y.classes[1] == "classD")
    let z = parseShorthand("input.classE")
    check(z != nil)
    check(z.tag == "input")
    check(z.id == "")
    check(z.classes.len == 1)
    check(z.classes[0] == "classE")

  test "test compileShorthand":
    check(compileShorthand("") == "")
    check(compileShorthand("div") == "<div/>")
    check(compileShorthand("div#test") == "<div id=\'test\'/>")
    check(compileShorthand("div#test.some-class") == "<div id=\'test\' class=\'some-class\'/>")
    check(compileShorthand("div#test.classA.classB") == "<div id=\'test\' class=\'classA classB\'/>")
    check(compileShorthand("input.classE") == "<input class=\'classE\'/>")
    check(compileShorthand("div", "blah") == "<div>blah</div>")
    check(compileShorthand("div#test", "blah") == "<div id=\'test\'>blah</div>")
    check(compileShorthand("div#test.some-class", "blah") == "<div id=\'test\' class=\'some-class\'>blah</div>")
    check(compileShorthand("div#test.classA.classB", "blah") == "<div id=\'test\' class=\'classA classB\'>blah</div>")
