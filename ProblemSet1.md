# Problem set 1

Questions are from:

http://brendanfong.com/programmingcats_files/ps1.pdf

## Question 1

```haskell
$ ghci
GHCi, version 7.10.3: http://www.haskell.org/ghc/  :? for help
Prelude> let f x = x ^ 2
Prelude> f 6
36
Prelude> let g x = x + 1
Prelude> let h = f . g
Prelude> h 2
Prelude> let i = g . f
Prelude> i 2
5
```

## Question 2: Tiny Category
Ob(c) = { 1,2 }

4 morphisms
1. <a href="https://www.codecogs.com/eqnedit.php?latex=P(1,1)=\{&space;id_{1}&space;\}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?P(1,1)=\{&space;id_{1}&space;\}" title="P(1,1)=\{ id_{1} \}" /></a>
1. <a href="https://www.codecogs.com/eqnedit.php?latex=P(1,2)=\{&space;f&space;\}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?P(1,2)=\{&space;f&space;\}" title="P(1,2)=\{ f \}" /></a>
1. <a href="https://www.codecogs.com/eqnedit.php?latex=P(2,1)=\phi" target="_blank"><img src="https://latex.codecogs.com/gif.latex?P(2,1)=\phi" title="P(2,1)=\phi" /></a>
1. {<a href="https://www.codecogs.com/eqnedit.php?latex=P(2,2)=\{&space;id_{2}&space;\}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?P(2,2)=\{&space;id_{2}&space;\}" title="P(2,2)=\{ id_{2} \}" /></a>

There are only 2 possible compositions:
1. f . id1
1. id2 . f

And because of the definition of f, id1 and id2 we have:
1. f . id1 (1) = f(1) so as 1 is the only possible value for f, f . id1 = f
1. id2 . f (1) = id2(2) = 2 = f(1) so as 1 is the only possible value for f, id2 . f = f

## Question 3 : Yes
* f . g (d) = f(c) = d so f . g = id for d
* g . f (c) = g(d) = c so g . f = id for c
