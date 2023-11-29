listPlus :: [Int] -> [Int] -> [Int]
listPlus la lb  = case la of 
    [] -> []
    a : as -> case lb of
        [] -> []
        bs -> map (+a) bs ++ listPlus as bs