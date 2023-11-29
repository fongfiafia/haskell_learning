main :: IO()
main = 
    getLine >>=  \line -> 
    let rev = reverse line in 
    putStrLn rev