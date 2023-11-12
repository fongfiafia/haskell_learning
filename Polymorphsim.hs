dup :: a -> [a]
dup a = [a,a]

myTake :: [a] -> a
myTake [x , _, _ ..] = x