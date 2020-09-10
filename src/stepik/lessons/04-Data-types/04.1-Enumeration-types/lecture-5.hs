module Demo where

date LogLevel = Error | Warning | Info

cmp :: LogLevel -> LogLevel -> Ordering
cmp Error   Error   = EQ
cmp Warning Warning = EQ
cmp Info    Info    = EQ
cmp Error   _       = GT
cmp Info    _       = LT
cmp Warning Error   = LT
cmp Warning Info    = GT

lessThanError :: LogLevel -> Bool
lessThanError lvl =
  case cmp lvl Error of
    LT -> True
    _  -> False