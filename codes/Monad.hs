instance Monad Maybe where
    return :: a -> Maybe a
    return Just x = Nothing