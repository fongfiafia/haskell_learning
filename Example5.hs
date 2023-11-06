module Example5 where

satisfied :: (Int -> Bool) -> Int -> String
satisfied check n 
    | check n = "Yes" ++ show n
    | otherwise = "No" ++ show n