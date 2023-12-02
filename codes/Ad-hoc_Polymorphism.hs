class Display a where 
    display :: a -> String

instance Display Bool where
    display True  = "true"
    display False = "false"

instance Display Char where
    display n = [n]

greet :: Display a => a -> String
greet n = "Hello, " ++ display n ++ "!"


class Display2 b where 
    -- Minimum implementation
    display2 :: b-> String

    -- default implementation of displayList
    displayList :: [b] -> String
    displayList list = "[" ++ show (map display2 list)  ++ "]" -- can invoke display2 method

instance Display2 Integer where
    display2 k = show k

testDisplay2:: Display2 b  => b -> [b]-> String
testDisplay2 n list = displayList list