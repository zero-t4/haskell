import Control.Monad

main = do
  input <- getLine
  when (input == "nadir") $ putStrLn $ "yes " ++ input ++ " 🤗"