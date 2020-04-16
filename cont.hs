data Cont s x = Cont ((x -> s) -> s)

applyCont (Cont f) v = f v
evalCont (Cont f) = f (\v -> v)
showCont (Cont f) = f show

instance Functor (Cont s) where
  fmap fab (Cont f2) = Cont (f2 . (\f3 -> f3 . fab))
  fmap fab (Cont f2) = Cont (\f -> (f2  (\a -> ((\f3 -> f3 (fab(a))) f))))

instance Applicative (Cont s) where
  pure v = Cont (\f -> f v)
  (Cont fab) <*> (Cont f2) = Cont (\f -> (f2  (\a -> fab (\f3 -> f (f3 a)))))

instance Monad (Cont s) where
  return v = Cont (\f -> f  v)
  (Cont f1) >>= c2 = Cont (\f -> f1 (\a -> applyCont (c2 a) f))

-- Continuations without 'Cont' type
add :: Int -> Int -> Int
add x y = x + y

square :: Int -> Int
square x = x * x

pythagoras :: Int -> Int -> Int
pythagoras x y = add (square x) (square y)

add_cps :: Int -> Int -> ((Int -> r) -> r)
add_cps x y = \k -> k (add x y)

square_cps :: Int -> ((Int -> r) -> r)
square_cps x = \k -> k (square x)

pythagoras_cps :: Int -> Int -> ((Int -> r) -> r)
pythagoras_cps x y = \k ->
 square_cps x ( \x_squared ->
 square_cps y ( \y_squared ->
 add_cps x_squared y_squared k))

-- Continuations with 'Cont' type
plus1 x = x + 1
times2 = \x -> x * 2
repStr n = replicate n (head (show n))
twice f = f . f

-- Continuations using 'Cont'
cZero = Cont (\f -> f 0)
cOne = Cont (\f -> f 1)
cOne_ = cPlus1 <*> cZero
evalCZero =  evalCont cZero
mapCZero = (fmap (\x -> x+1) cZero) -- equal to cOne
cPlus1 = fmap (+) cOne
cPlus1_ = Cont (\f -> f plus1)
evalCPlus1 = evalCont cPlus1
cPlus1Time2 = fmap plus1 (Cont (\f -> times2))

cTimes2 = \x -> Cont (\f -> f ( x * 2))
cTwo = cOne >>= cTimes2
cFour = cOne >>= cTimes2 >>= cTimes2

cRepStr = \n ->  Cont (\f -> f(replicate n))
cFourOne = (cFour >>= cRepStr) <*> cOne
main = 
  putStrLn (showCont cFourOne)