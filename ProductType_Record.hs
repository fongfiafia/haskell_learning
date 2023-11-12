data User = MkUser 
       {
           userName :: String,
           userAge :: Int,
           userIsAdmin :: Bool
       }
       deriving (Show)
