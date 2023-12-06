{-# LANGUAGE OverloadedStrings #-}

module Domain.Car where

import Database.SQLite.Simple.FromRow
import Database.SQLite.Simple
import Data.Aeson hiding (json)

data CarField = CarField Int String String Double Integer deriving (Show) -- define Car table fields

instance FromRow CarField where
  fromRow = CarField <$> field <*> field <*> field <*> field <*> field -- get data from database


instance ToJSON CarField where -- define how to convert CarField to JSON
  toJSON (CarField id name brand price quantity) = 
    object                          
      [ "id" .= id,
        "name" .= name,
        "brand" .= brand,
        "price" .= price,
        "quantity" .= quantity
      ]

queryCarList :: Connection -> IO[CarField]
queryCarList db = do
    r <- query_ db "SELECT * from car" :: IO [CarField]
    pure r
    


    