import Rosalind
main :: IO ()
main  = do c <- getLine
           print $ dnaToRna c
