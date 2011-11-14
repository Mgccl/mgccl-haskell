--This suppose to implement some APL functions, but we will only work with lists
--Which means everything are 1D vectors, anything above will be ignored.
import Data.List

--Reduce : ×/2 3 4 is the same as reduce (*) [2,3,4]
reduce :: (a -> a -> a) -> [a] -> a
reduce = foldr1

--n-wise Reduce : 2 ×/2 3 4 is the same as nWiseReduce 2 (*) [2,3,4]
nWiseReduce :: Int -> (a -> a -> a) -> [a] -> [a]
nWiseReduce n f xs = map (foldr1 f) (take (length xs-n+1) (map (take n) (tails xs)))

--Grade up ⍋:
gradeUp :: Ord a => [a] -> [Int]
gradeUp xs = snd $ unzip . sort $ zip xs [0..length xs-1]

--Grade Down ⍒:
gradeDown :: Ord a => [a] -> [Int]
gradeDown = reverse . gradeUp

--Index Function ⌷:
index :: [Int] -> [a] -> [a]
index is xs = [xs!!i|i<-is]
