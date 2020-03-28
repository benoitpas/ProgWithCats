bimapEither :: (a -> b) -> (c -> d) -> (Either a c) -> (Either b d)
bimapEither f g (Left a) = Left (f a)
bimapEither f g (Right c) = Right (g c)

main = putStrLn "Main"

