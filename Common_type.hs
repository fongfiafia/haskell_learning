-- data List a =
--     Empty
--     | Cons a (List a)

-- myList :: List Int
-- myList = Cons 1 (Cons 1 Empty) 3

data MyMaybe a 
    = MyNothing
    | MyJust a

fromMaybmapeInt :: MyMaybe Int -> Int
fromMaybeInt MyNothing = 0
fromMaybeInt (MyJust n) = n

myFind :: ( a -> Bool) -> [a] -> MyMaybe a
-- myFind f list = if 

-- data Either a b 
--     = Left a
--     | Right b

-- partitionEithers :: [Either a b] -> ([a],[b])
-- partitionEithers [Left 3 , Right "hi!", Left 5]

countTimes :: Int -> [Int] -> Int
countTimes targetNum list = go 0 list
 where 
    go :: Int -> [Int] ->Int
    go n []  = n
    go n (x : xz) =  if x == targetNum then go n+1 xz else go n xz