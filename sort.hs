{-# language FlexibleInstances #-}
{-# language MultiParamTypeClasses #-}
{-# language FunctionalDependencies #-}
{-# LANGUAGE DeriveFunctor #-}

-- https://hackage.haskell.org/package/data-fix-0.2.0/docs/Data-Fix.html
import Data.Fix

split :: [a] -> ([a], [a])
split (a: b: t) = (a: t1, b: t2)
  where
      (t1, t2) = split t
split l = (l, [])

merge :: Ord a => [a] -> [a] -> [a]
merge (a: as) (b: bs) =
    if a <= b
    then a : merge as (b: bs)
    else b : merge (a: as) bs
merge as [] = as
merge [] bs = bs

type Tree a = Fix (T a)

data T a b = Leaf | Node a b
  deriving Functor

splitCoAlgrebra :: [a] -> T [a] [a]
splitCoAlgrebra [] = Leaf 
splitCoAlgrebra s = Node s1 s2 where (s1,s2) = split(s)

mergeAlgebra :: Ord a => T [a] [a] -> [a]
mergeAlgebra Leaf = []
mergeAlgebra (Node s1 s2) = merge s1 s2

main = print (hylo mergeAlgebra splitCoAlgrebra [3,1,4,1,5,9])