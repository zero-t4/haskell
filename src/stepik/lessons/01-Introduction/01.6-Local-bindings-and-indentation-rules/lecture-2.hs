-- Let in

roots :: Double -> Double -> Double -> (Double, Double)
roots a b c =
  (
    (-b - sqrt (b ^ 2 - 4 * a * c)) / (2 * a),
    (-b + sqrt (b ^ 2 - 4 * a * c)) / (2 * a)
  )

roots' a b c =
  let d = sqrt (b ^ 2 - 4 * a * c) in
  ((-b - d) / (2 * a),(-b + d) / (2 * a))

-- Let in as expression
b = let x = True in (True, x)
-- (True, True)

-- Let in with multiple bindings
roots'' a b c =
  let { d = sqrt (b ^ 2 - 4 * a * c); x1 = (-b - d) / (2 * a); x2 = (-b + d) / (2 * a)}
  in (x1, x2)

-- Let in with multiple bindings & indentation
-- All local bindings (x1, x2, d, aTwice) should start from the same position
roots''' a b c =
  let
    x1 = (-b - d) / aTwice
    x2 = (-b + d) / aTwice
    d = sqrt (b ^ 2 - 4 * a * c)
    aTwice = 2 * a
  in (x1, x2)
