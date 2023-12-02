main = do
    putStrLn "hello world!"
    putStrLn ("Please look at my favorite odd numbers: " ++ show (filter odd [10..20]))