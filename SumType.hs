data Color 
       = Red
       | Green
       | Blue

showColor :: Color -> String
showColor color = case color of
        Red -> "Red"
        Green -> "Green"
        Blue -> "Blue"

data Result 
        = Error String
        | Ok Int

showResult :: Result -> String
showResult (Error msg) = "Error is " ++ msg
showResult (Ok n) = "Ok is " ++ show n

divide :: Int -> Int -> Result
divide n 0 = Error "cant be zero"
divide n m = Ok (div n m)