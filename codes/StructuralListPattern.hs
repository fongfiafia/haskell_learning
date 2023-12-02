headOrDef :: Int -> [Int] -> Int
headOrDef def []= def
headOrDef _ ( m : _) = m

dropHead:: [Int] -> [Int]
dropHead [] = [] 
dropHead (_ :xs) = xs 

secondIsZero :: [Int] -> Bool
secondIsZero [] = False
secondIsZero (_ : 0 : _) = True

countTheTimes:: Int -> [Int] -> Int
countTheTimes n list = go 0 list
    where   
    go :: Int -> [Int] -> Int
    go m [] = m
    go m (x:xs)
        | n == x = go (m+1) xs
        | otherwise = go m xs

-- Wrong pattern writes
-- Incorrect pattern orders     
isEmptyErr:: [Int]-> Bool
isEmptyErr _ = False
isEmptyErr [] = True

-- variable catch all cases
headOrDefErr:: Int -> [Int] -> Int
headOrDefErr def l = def
headOrDefErr _ (x : _) = x

-- names are not surpport equal
sameErr :: Int -> Int ->Int
sameErr x x = True

-- partten not cover all possible cases
headErr:: [Int] ->Int
headErr (x : _) = x

-- looks ugly, recommand math every word 
isGreeting :: String -> Bool
isGreeting str = case str of
    'H' : 'i' :'!' : _ ->True -- 表示是Hi! 开头 
    _ -> False