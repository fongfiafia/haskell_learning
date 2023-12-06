{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import Web.Scotty

import Control.Monad.Trans
import Network.Wai.Middleware.Cors

import Infra.DB
import Domain.Car

main :: IO ()
main = do
    db <- initDB -- init temporary sqlite db and initial data
    scotty 8081 $ do -- start service on port 8081
        middleware simpleCors
        get "/haskell/car/list" $ do -- define a get http to query car list
            a <- lift $ queryCarList db  
            json a 