headOrDef :: Int -> [Int] -> Int
headOrDef def []= def
headOrDef _ ( x : _) = x