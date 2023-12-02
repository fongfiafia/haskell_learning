{-# LANGUAGE InstanceSigs #-}
module MyEq where

class Ea a where
    (==) ,(/=):: a ->a -> Bool
    x /=y = not (x == y)
    x == y = not (x /= y)