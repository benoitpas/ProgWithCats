swap :: (a,b) -> (b,a)
swap (a,b) = (b,a)

unit :: a -> ((),a)
unit a = ((),a)

assoc :: (a,(b,c)) -> ((a,b),c)
assoc (x,(y,z)) = ((x,y),z)

main = putStrLn "Main"

