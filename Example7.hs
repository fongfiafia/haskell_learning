myNot :: Bool -> Bool
-- myNot False = True
-- myNot True = False
myNot x = not x

eval :: Char -> Int -> Int -> Int
-- eval op x y = case op of
--     '+' -> x + y
--     '-' -> x - y
--     '*' -> x * y
--     _ -> 0
eval op x y = x op y
-- eval '+' x y = x + y
-- eval '-' x y = x - y
-- eval '*' x y = x * y
