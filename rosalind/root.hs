main :: IO ()
main  = do c <- getLine
           print $ doubleFactorial ((read c::Int)*2-3)
    where doubleFactorial n = foldl1 (\x y->x*y `rem` 1000000) [n,n-2..1]
