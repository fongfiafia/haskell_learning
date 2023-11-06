module Example2 where

sign :: Int -> String
sign x 
    | x < 0 = "Negative"
    | x == 0 = "Zero"
    | otherwise = "Positive"