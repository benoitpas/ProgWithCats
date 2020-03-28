data BooleanFunctor a = BooleanFunctor Bool

instance Functor BooleanFunctor where
  fmap f (BooleanFunctor a) = BooleanFunctor a

main = putStrLn "Main"
