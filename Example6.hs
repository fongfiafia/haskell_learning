module Example6 where

    div12By = div 12

    boolJudge = ( True &&)

    applyTwice :: (Integer -> Integer) -> Integer -> Integer
    applyTwice f x = f (f x)

    myMap :: (a -> b) -> [a] -> [b]
    myMap fun (x:xs) = (fun x) : (myMap fun xs)