data Cont s x = Cont ((x -> s) -> s)

instance Functor (Cont s) where
  fmap f (Cont f2) = Cont (f2 . (\f3 -> f3 . f ))

instance Applicative (Cont s) where
  pure v = Cont (\f -> f v)
 -- (Cont f) <*> (Cont f2) = 

--instance Monad (Cont s) where
--    return f = Cont (\f2 -> f . f2)
--    fmap f (Cont ((x -> s) -> s)) = 0

main = --let functor = fmap (\x -> x + 1) (Cont (\f -> (f . (\x -> x *2)))) in
    putStrLn " "