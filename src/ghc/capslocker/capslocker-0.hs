import Data.Char

main = do
  l <- getContents
  putStrLn $ map toUpper l
