{-# LANGUAGE BangPatterns #-}
module M0 where

import qualified M1

main = do
  print $ take 100 $ runLengths "aaabbc"

-- Group consecutive equal elements and count them,
-- e.g. runLengths "aaabbc" = [('a',3),('b',2),('c',1)]
runLengths :: Eq a => [a] -> [(a, Int)]
runLengths []     = []
runLengths (x:xs) = go x 1 xs
  where
    go c !n []                 = [(c, n)]
    go c !n (y:ys)
      | y == c    = go c (n + 1) ys
      | otherwise = (c, n) : go y 1 xs





-- tests M1 dependency
chunk0 :: Int
chunk0 = M1.value

m0_value :: Int
m0_value = chunk0