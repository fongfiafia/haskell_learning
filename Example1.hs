module Example1 where

headOrDefault :: int -> [int] -> int
headOrDefault def list = if null list then def else head list