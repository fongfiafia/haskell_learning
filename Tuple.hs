splitAtPos3 :: Int -> [Int] -> ([Int] ,[Int])
splitAtPos3 pos xs = (take pos xs, drop pos xs)

matching :: (Bool, Int,String) -> String
matching (b,i,s) = if b then show i else s