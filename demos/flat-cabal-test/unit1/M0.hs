{-# OPTIONS_GHC -fprefer-byte-code -fbyte-code-and-object-code -fwrite-if-simplified-core -fbreak-points #-}
module M0 where

import qualified M1

chunk0 :: Int
chunk0 = M1.value

m0_value :: Int
m0_value = chunk0


main :: IO ()
main = do
    putStrLn "hello"
    arg <- pure chunk0
    print arg
    putStrLn "goodbye"