module Lampese ( say, fq ) where 

say :: Int -> Int
say 1 = 1 
say n = n 

fq :: Int -> String
fq 0 = ""
fq n = fq (n-1) ++ "fq.mp3\n"

-- 说1是1