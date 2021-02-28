# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  xam

suite "test xam":
  # "suite setup: run once before the tests"
  type
    TObject = object
    TObjectRef = ref TObject

  var
    aObject: TObjectRef = new TObject
    bObject: TObjectRef = new TObject
    nObject: TObjectRef = nil

  #setup: # "run before each test"
  
  #teardown: # "run after each test"
  
  test "test assgined":
    check(assigned(aObject))
    check(assigned(aObject, bObject))
    check(not assigned(nObject))
    check(not assigned(aObject, nObject))

  test "test ensure":
    let cObject = ensure(nObject, aObject)
    check(cObject == aObject)

  test "test debug":
    DEVELOPMENT = false
    check(debug("123") == "123")

  # "suite teardown: run once after the tests"

