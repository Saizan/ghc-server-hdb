module U1M2 where
import U3M2 (value_3_2)
import U3M3 (value_3_3)

value_1_2 :: Int
value_1_2 = value_3_2 + value_3_3 + 1
