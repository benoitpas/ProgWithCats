--import Control.Applicative (Applicative(..))
--import Control.Monad       (liftM, ap)

data Tree a = Leaf a | Node (Tree a) (Tree a) 
    deriving Show

-- as Mon
instance Functor Tree where
    fmap f (Leaf v) = Leaf (f v)
    fmap f (Node t1 t2) = Node (fmap f t1) (fmap f t2)

instance Applicative Tree where
   pure v = Leaf v
   (<*>) (Leaf f) (Leaf v) = Leaf (f v)
   (<*>) (Leaf f) (Node t1 t2) = Node (fmap f t1) (fmap f t2)
   (<*>) (Node t1 t2) t3 = Node (t1 <*> t3) (t2 <*> t3)


instance Monad Tree where
    return v = Leaf v
    (Leaf v) >>= f = (f v)
    (Node t1 t2) >>= f = Node (t1 >>= f) (t2 >>= f)


main = let t = Node (Leaf 1) (Node (Leaf 2) (Leaf 3)) in
        let t2 = fmap (\x -> x + 1) t in 
            let t3 = Leaf (\x -> x - 1) in  
                let t4 = t3 <*> t2 in 
                    let t5 = (\x -> Leaf (x -1)) in
                        let t6 = (\x -> Node (Leaf (x-1)) (Leaf (x*2))) in
                            do
                                putStrLn (show t)
                                putStrLn (show t2)
                                --putStrLn (show t3)
