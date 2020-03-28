{-# language FlexibleInstances #-}
{-# language MultiParamTypeClasses #-}
{-# language FunctionalDependencies #-}
class Category obj mor | mor -> obj where
  dom :: mor -> obj
  cod :: mor -> obj
  idy :: obj -> mor
  cmp :: mor -> mor -> Maybe mor


data Objects = One | Two
data Functions = Id1 | Id2 | F

instance Category Objects Functions where
  dom mor = case mor of
    Id1 -> One
    Id2 -> Two
    F -> One
  cod mor = case mor of
    Id1 -> One
    Id2 -> Two
    F -> Two
  idy obj = case obj of
    One -> Id1
    Two -> Id2
  cmp m1 m2 = case (m1,m2) of
    (Id1,Id2) -> Nothing
    (Id1,Id1) -> Just Id1
    (Id2,Id1) -> Nothing
    (Id2,Id2) -> Just Id2
    (Id1,F) -> Nothing
    (Id2,F) -> Just F
    (F,Id1) -> Just F
    (F,Id2) -> Nothing
    (F,F) -> Nothing

main = putStrLn "Main"
