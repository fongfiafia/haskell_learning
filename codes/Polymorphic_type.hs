data Check a = MkCheck 
    {
        chestGold :: Int,
        chestTreasure :: a
    }   
    deriving (Show) -- ghc help derive show function