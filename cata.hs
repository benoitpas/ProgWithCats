{-# language FlexibleInstances #-}
{-# language MultiParamTypeClasses #-}
{-# language FunctionalDependencies #-}
{-# LANGUAGE DeriveFunctor #-}

data F a = Nil | Cons Int a
  deriving Functor

type ListInt = Fix F
