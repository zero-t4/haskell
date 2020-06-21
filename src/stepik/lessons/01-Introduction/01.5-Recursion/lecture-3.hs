{-|
  error "message"
  throws an error with message into a program log

  *** Exception: message
  CallStack (from HasCallStack):
    error, called at <interactive>:5:1 in interactive:Ghci3
  ----------------------------------------------------------------

  undefined
  just throws an error into a program log

  *** Exception: Prelude.undefined
  CallStack (from HasCallStack):
    error, called at libraries/base/GHC/Err.hs:80:14 in base:GHC.Err
    undefined, called at <interactive>:6:1 in interactive:Ghci3
-}

factorial'' 0 = 1
factorial'' n = if n < 0 then error "arg must be >= 0" else n * factorial'' (n - 1)

-- unresolved recursion and interrupting the program is same for Haskell