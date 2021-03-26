# looping

This is the documentation of the looping related routines module of the Xam library.

## TEMPLATES

### EACH

**SIGNATURE**
`template each*(list, id, code: untyped)`
**DESCRIPTION**
*This template loops the provided collection using the specified id and executing the provided code block.*
*NOTE: It uses the items iterator.*
**USAGE**
```nim
    var sq = newSeq[int]()
    [1,2,3].each(x):
      sq.add(x)
    if sq.len == 3:
      echo "the sequence has 3 elements"
```
