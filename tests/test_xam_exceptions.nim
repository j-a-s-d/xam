# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  xam

suite "test xam exceptions":

  proc nothing() = discard

  proc failure() = raise newException(IOError, "Blah")

  test "test sandboxed":
    check(sandboxed(nothing))
    check(not sandboxed(nil))
    check(not sandboxed(failure))
    var msg = ""
    discard sandboxed(failure, proc (error: string) = (msg = error))
    check(msg == "Blah")
    discard sandboxed(nil, proc (error: string) = (msg = error))
    check(msg == "Cannot invoke nil")

  test "test silent":
    var msg = ""
    silent(failure, proc (error: string) = (msg = error))
    check(msg == "Blah")

  test "test catch":
    var err: ref Exception
    catch(failure, err)
    check(err != nil)
    check(err.msg == "Blah")
    catch(nothing, err)
    check(err == nil)
    catch(nothing, err)
    check(err == nil)
    catch(nil, err)
    check(err.msg == "Cannot invoke nil")

