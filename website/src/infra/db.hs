-- {-# LANGUAGE OverloadedStrings #-}

-- module DB where

-- import Control.Applicative
-- import Database.SQLite.Simple

-- initDB :: IO Connection
-- initDB = do
--   conn <- open "test.db"
--   execute_ conn "CREATE TABLE IF NOT EXISTS user (id INTEGER PRIMARY KEY, name TEXT)"
--   execute_ conn "INSERT INTO user (name) VALUES ('Lincoln Burrows')"
-- --   execute conn "Insert INTO user (name) VALUES ('Michael Scofield')"
-- --   execute conn "Insert INTO user (name) VALUES ('Alexander Mahone')"
--   pure conn


  {-# LANGUAGE OverloadedStrings #-}

module Infra.DB where

import Control.Applicative
import Database.SQLite.Simple

import Control.Monad
import Control.Monad.Trans

initDB :: IO Connection
initDB = do
  conn <- open "test.db"
  execute_ conn "DROP TABLE IF EXISTS car"
  execute_ conn "CREATE TABLE IF NOT EXISTS car (id INTEGER PRIMARY KEY, name TEXT,brand TEXT, price Double, quantity INTEGER)"
  execute_ conn "DELETE FROM car"
  execute_ conn "INSERT INTO car (name,brand,price,quantity) VALUES ('Ford F-series','Ford',1000000,1)" 
  execute_ conn "INSERT INTO car (name,brand,price,quantity) VALUES ('Model Y', 'Tesla', 2000000, 1)" 
  execute_ conn "INSERT INTO car (name,brand,price,quantity) VALUES ('CR-V', 'Honda', 3000000, 1)" 
  execute_ conn "INSERT INTO car (name,brand,price,quantity) VALUES ('Camry', 'Toyota', 5000000, 1)" 
  execute_ conn "INSERT INTO car (name,brand,price,quantity) VALUES ('RAV4', 'Toyota', 4000000, 1)" 
  execute_ conn "INSERT INTO car (name,brand,price,quantity) VALUES ('Rogue', 'Nissan', 7000000, 1)" 
  execute_ conn "INSERT INTO car (name,brand,price,quantity) VALUES ('Corolla', 'Toyota', 2000000, 1)" 
  execute_ conn "INSERT INTO car (name,brand,price,quantity) VALUES ('CMC Series', 'GMC', 1000000, 1)" 
  execute_ conn "INSERT INTO car (name,brand,price,quantity) VALUES ('Sliverado', 'Chevrolet', 9000000, 1)" 
  pure conn





