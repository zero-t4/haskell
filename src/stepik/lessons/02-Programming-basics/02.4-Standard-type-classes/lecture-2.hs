-- :t show
-- show :: Show a => a -> String

-- show 5
-- "5"

-- show 'x'
-- "'x'"

-- show ()
-- "()"

-- read "5"
{-|
  <interactive>:6:1: error:
      • Overlapping instances for UnescapingPrint.ToUnescaping t0
          arising from a use of ‘UnescapingPrint.uprint’
        Matching instances:
          instance Show a => UnescapingPrint.ToUnescaping a
            -- Defined in ‘UnescapingPrint’
          instance UnescapingPrint.ToUnescaping Char
            -- Defined in ‘UnescapingPrint’
        (The choice depends on the instantiation of ‘t0’
         To pick the first instance above, use IncoherentInstances
         when compiling the other instance declarations)
      • In a stmt of an interactive GHCi command:
          UnescapingPrint.uprint it
-}

-- read "5" :: Int
-- 5

-- read "[1,2]" :: [Double]
-- [1.0,2.0]

-- read "5 rings" :: [Double]
-- *** Exception: Prelude.read: no parse

-- reads "5 rings" :: [(Int,String)]
-- [(5," rings")]

-- reads "5 rings" :: [(String,String)]
-- []
