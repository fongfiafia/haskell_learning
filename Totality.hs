example :: Bool -> [Int] -> Int
example True [] = 0
example False [x , y] = x+y