{-# language FlexibleInstances #-}
{-# language MultiParamTypeClasses #-}
{-# language FunctionalDependencies #-}
{-# LANGUAGE DeriveFunctor #-}

import Data.Fix

data Nat2 a = ZeroF | SuccF a
  deriving Functor

toIntF :: Nat2 Int -> Int
toIntF ZeroF = 0
toIntF (SuccF n) = n + 1


toInt :: Fix Nat2 -> Int
toInt = cata $ toIntF

toNat2 :: Int -> Fix Nat2
toNat2 = ana $ \x -> case x of
  0 -> ZeroF
  n -> SuccF (pred n)

fiboF :: (Nat2 (Int,Int)) -> (Int,Int)
fiboF ZeroF = (1,0)
fiboF (SuccF (n,m)) = (n+m,n)

fibo :: Fix Nat2 -> Int
fibo = fst . (cata $ fiboF)

coalg :: Int -> Nat2 Int
coalg 0 = ZeroF
coalg n = SuccF (pred n)

main =  do
  let f0 = fibo (Fix ZeroF)
  let f1 = fibo (Fix (SuccF (Fix ZeroF)))
  let f2 = fibo (Fix (SuccF (Fix (SuccF (Fix ZeroF)))))
  let f3 = fibo (Fix (SuccF (Fix (SuccF (Fix (SuccF (Fix ZeroF)))))))
  let f4 = fibo (Fix (SuccF (Fix (SuccF (Fix (SuccF (Fix (SuccF (Fix ZeroF)))))))))
  let f5 = fibo (Fix (SuccF (Fix (SuccF (Fix (SuccF (Fix (SuccF (Fix (SuccF (Fix ZeroF)))))))))))
  print f0
  print f1
  print f2
  print f3
  print f4
  print f5