--Haskell CW1 III
--Nabeel Ali 2018


--Q1
--a
second1 x = head(tail x)
--b
second2 x = x !! 1
--c
second3 (_:x:_) = x


--Q2
--a
xor1 True False = True
xor1 False True = True
xor1 _ _ = False
--b
xor2 a b = if a then
              if b then False else True
           else
              if b then True else False

--c
xor3 a b = a/= b


--Q3
sumsqr n = 
   sum([x*x | x <- [1..n]])


--Q4
grid x = 
   [(a, b) | a <- [1..x], b <- [1..x], a /= b]


--Q5
euclid x y | x == y     = x
           | x > y      = euclid (x-y) y
           | otherwise  = euclid x (y-x)


--Q6

fastrev :: [a] -> [a]
fastrev xs = rev xs []

rev :: [a] -> [a] -> [a]
rev []     ys = ys
rev (x:xs) ys = rev xs (x:ys)