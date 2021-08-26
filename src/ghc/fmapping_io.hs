import Data.Char
import Data.List

main = do
  a <- fmap (intersperse '-' . reverse . map toUpper) getLine
  putStrLn a
