-- Tab `    ` is equal to 8 ` ` spaces

-- Increasing indentation is safe, decreasing could be dangerous.

roots :: Double -> Double -> Double
          -> (Double, Double)

roots a b c =
  (
    (-b - sqrt (b ^ 2 - 4 * a * c)) / (2 * a)
  ,
    (-b + sqrt (b ^ 2 - 4 * a * c)) / (2 * a)
  )

roots' ::
  Double
  -> Double
  -> Double
  -> (Double, Double)
roots' = roots

-- Global definitions starts from 0 indentation