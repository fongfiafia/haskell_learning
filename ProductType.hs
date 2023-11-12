data User = MkUser String Int Bool
       deriving (Show)

-- getName :: User -> String
-- getName (MkUser name _ _) = name

setName :: String -> User -> User
setName name (MkUser _ age isAdmin) = MkUser name age isAdmin