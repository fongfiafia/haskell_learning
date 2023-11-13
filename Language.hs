{-# LANGUAGE InstanceSigs #-}
module Display3 where

class Display3 a where
    display3 :: a -> String

instance Display3 Char where
    display3 :: Char -> String
    display3 n = [n]

greet1::(Display3  a) => a -> String
greet1 x = display3 x