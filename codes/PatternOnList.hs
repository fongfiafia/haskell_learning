isEmpty :: [Int] -> Bool
isEmpty [] = True
isEmpty _ = False

sumTwoOfThree :: [Int] -> Int
sumTwoOfThree [x , _, y] = x+y 
sumTwoOfThree _ = 0

oneOrTwoZero :: [Int] -> Bool
oneOrTwoZero list = case list of
     [0] -> True
     [0,0] -> True
     _ -> False

