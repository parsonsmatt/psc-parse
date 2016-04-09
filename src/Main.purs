module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  log "Hello sailor!"

parseError :: Int -> Int -> Int
parseError x y
    | x < y     = f x y
    | otherwise = g x y
  where
    f = add
    g = subtract
