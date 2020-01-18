# Problem set 1

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
