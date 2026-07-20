module M0 where

import qualified M1

chunk0 :: Int
chunk0 = M1.value
m0_value :: Int
m0_value = chunk0


main = do
  pure ()
  pure ()
  arg <- pure chunk0
  print arg