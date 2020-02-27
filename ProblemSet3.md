# Problem set 3

Questions are from:

http://brendanfong.com/programmingcats_files/ps3.pdf

## Question 1: Pullbacks and limits

As A is the constant category the definition of <a href="https://www.codecogs.com/eqnedit.php?latex=\pi_1" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\pi_1" title="\pi_1" /></a> and <a href="https://www.codecogs.com/eqnedit.php?latex=\pi_2" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\pi_2" title="\pi_2" /></a> is quite straightforward:

a. The object is <a href="https://www.codecogs.com/eqnedit.php?latex=\mathbb{N}&space;\rtimes&space;_{1}\textrm{\mathbb{B}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mathbb{N}&space;\rtimes&space;_{1}\textrm{\mathbb{B}}" title="\mathbb{N} \rtimes _{1}\textrm{\mathbb{B}}" /></a> and

<a href="https://www.codecogs.com/eqnedit.php?latex=\pi_1:\mathbb{N}*\underline{1}^{\mathbb{B}}&space;\rightarrow&space;\mathbb{N}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\pi_1:\mathbb{N}*\underline{1}^{\mathbb{B}}&space;\rightarrow&space;\mathbb{N}" title="\pi_1:\mathbb{N}*\underline{1}^{\mathbb{B}} \rightarrow \mathbb{N}" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=(n,b\mapsto&space;1)&space;\mapsto&space;n" target="_blank"><img src="https://latex.codecogs.com/gif.latex?(n,b\mapsto&space;1)&space;\mapsto&space;n" title="(n,b\mapsto 1) \mapsto n" /></a>



<a href="https://www.codecogs.com/eqnedit.php?latex=\pi_2:\mathbb{N}*\underline{1}^{\mathbb{B}}&space;\rightarrow&space;\mathbb{B}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\pi_2:\mathbb{N}*\underline{1}^{\mathbb{B}}&space;\rightarrow&space;\mathbb{B}" title="\pi_2:\mathbb{N}*\underline{1}^{\mathbb{B}} \rightarrow \mathbb{B}" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=(n,b\mapsto&space;1)&space;\mapsto&space;b" target="_blank"><img src="https://latex.codecogs.com/gif.latex?(n,b\mapsto&space;1)&space;\mapsto&space;b" title="(n,b\mapsto 1) \mapsto b" /></a>

b. The object is <a href="https://www.codecogs.com/eqnedit.php?latex=\mathbb{X}&space;\rtimes&space;_{1}\textrm{\mathbb{Y}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mathbb{X}&space;\rtimes&space;_{1}\textrm{\mathbb{Y}}" title="\mathbb{X} \rtimes _{1}\textrm{\mathbb{Y}}" /></a> and

<a href="https://www.codecogs.com/eqnedit.php?latex=\pi_1:X*\underline{1}^{Y}&space;\rightarrow&space;X" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\pi_1:X*\underline{1}^{Y}&space;\rightarrow&space;X" title="\pi_1:X*\underline{1}^{Y} \rightarrow X" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=(x,y\mapsto&space;1)&space;\mapsto&space;x" target="_blank"><img src="https://latex.codecogs.com/gif.latex?(x,y\mapsto&space;1)&space;\mapsto&space;x" title="(x,y\mapsto 1) \mapsto x" /></a>


<a href="https://www.codecogs.com/eqnedit.php?latex=\pi_1:X*\underline{1}^{Y}&space;\rightarrow&space;Y" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\pi_1:X*\underline{1}^{Y}&space;\rightarrow&space;Y" title="\pi_1:X*\underline{1}^{Y} \rightarrow Y" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=(x,y\mapsto&space;1)&space;\mapsto&space;y" target="_blank"><img src="https://latex.codecogs.com/gif.latex?(x,y\mapsto&space;1)&space;\mapsto&space;y" title="(x,y\mapsto 1) \mapsto y" /></a>

c. The object is <a href="https://www.codecogs.com/eqnedit.php?latex=\mathbb{N}&space;\rtimes&space;_{\mathbb{B}}\textrm{\underline{1}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mathbb{N}&space;\rtimes&space;_{\mathbb{B}}\textrm{\underline{1}}" title="\mathbb{N} \rtimes _{\mathbb{B}}\textrm{\underline{1}}" /></a> and

<a href="https://www.codecogs.com/eqnedit.php?latex=\pi_1:\mathbb{N}&space;\rtimes&space;_{\mathbb{B}}\textrm{\underline{1}}&space;\rightarrow&space;\mathbb{N}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\pi_1:\mathbb{N}&space;\rtimes&space;_{\mathbb{B}}\textrm{\underline{1}}&space;\rightarrow&space;\mathbb{N}" title="\pi_1:\mathbb{N} \rtimes _{\mathbb{B}}\textrm{\underline{1}} \rightarrow \mathbb{N}" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=(n,&space;b&space;\mapsto1)&space;\mapsto&space;n*2" target="_blank"><img src="https://latex.codecogs.com/gif.latex?(n,&space;b&space;\mapsto1)&space;\mapsto&space;n*2" title="(n, b \mapsto1) \mapsto n*2" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=\pi_2:\mathbb{N}&space;\rtimes&space;_{\mathbb{B}}\textrm{\underline{1}}&space;\rightarrow&space;\underline{1}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\pi_2:\mathbb{N}&space;\rtimes&space;_{\mathbb{B}}\textrm{\underline{1}}&space;\rightarrow&space;\underline{1}" title="\pi_2:\mathbb{N} \rtimes _{\mathbb{B}}\textrm{\underline{1}} \rightarrow \underline{1}" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=(n,&space;b&space;\mapsto&space;1)&space;\mapsto&space;1" target="_blank"><img src="https://latex.codecogs.com/gif.latex?(n,&space;b&space;\mapsto&space;1)&space;\mapsto&space;1" title="(n, b \mapsto 1) \mapsto 1" /></a>

## Question 2. Catamorphisms

a. 'hello' returns 'True' if the list contains at least one even number and false is all the numbers it contains are odd.

b. implementation of 'product':

```haskell
product :: F Int -> Int
product :: Nil = 1
product :: Cons n a = n * a
```
## Question 3. Naturals

a. type Nat2

```haskell
data Nat2 a = Zero | Succ a
  deriving Functor

```

b. Fibonnacci
```haskell
fiboF :: (Nat2 (Int,Int)) -> (Int,Int)
fiboF ZeroF = (1,0)
fiboF (SuccF (n,m)) = (n+m,n)

fibo :: Fix Nat2 -> Int
fibo = fst . (cata $ fiboF)

```

c. coalgebra
```haskell
coalg :: Int -> Nat2 Int
coalg 0 = ZeroF
coalg n = SuccF (pred n)
```
## Question 4. Sort
```haskell
-- https://hackage.haskell.org/package/data-fix-0.2.0/docs/Data-Fix.html
import Data.Fix

type Tree a = Fix (T a)

data T a b = Leaf | Node a b
  deriving Functor

splitCoAlgrebra :: [a] -> T [a] [a]
splitCoAlgrebra [] = Leaf
splitCoAlgrebra s = Node s1 s2 where (s1,s2) = split(s)

mergeAlgebra :: Ord a => T [a] [a] -> [a]
mergeAlgebra Leaf = []
mergeAlgebra (Node s1 s2) = merge s1 s2

main = print (hylo mergeAlgebra splitCoAlgrebra [3,1,4,1,5,9])
```
## Question 5. Monoids as List algebras

a. Given a list algebra <a href="https://www.codecogs.com/eqnedit.php?latex=a:List(X)&space;\rightarrow&space;X" target="_blank"><img src="https://latex.codecogs.com/gif.latex?a:List(X)&space;\rightarrow&space;X" title="a:List(X) \rightarrow X" /></a>, we can define a monoid on the set X with:
* <a href="https://www.codecogs.com/eqnedit.php?latex=x&space;*&space;y&space;\mapsto&space;List(x,y)&space;\rightarrow&space;a(List(x,y))" target="_blank"><img src="https://latex.codecogs.com/gif.latex?x&space;*&space;y&space;\mapsto&space;List(x,y)&space;\rightarrow&space;a(List(x,y))" title="x * y \mapsto List(x,y) \rightarrow a(List(x,y))" /></a>
* e is such that x * e <a href="https://www.codecogs.com/eqnedit.php?latex=x&space;*&space;e&space;\mapsto&space;List(x)&space;\rightarrow&space;a(List(x))" target="_blank"><img src="https://latex.codecogs.com/gif.latex?x&space;*&space;e&space;\mapsto&space;List(x)&space;\rightarrow&space;a(List(x))" title="x * e \mapsto List(x) \rightarrow a(List(x))" /></a> and <a href="https://www.codecogs.com/eqnedit.php?latex=e&space;*&space;y&space;\mapsto&space;List(y)&space;\rightarrow&space;a(List(y))" target="_blank"><img src="https://latex.codecogs.com/gif.latex?e&space;*&space;y&space;\mapsto&space;List(y)&space;\rightarrow&space;a(List(y))" title="e * y \mapsto List(y) \rightarrow a(List(y))" /></a>

Associativity:

<a href="https://www.codecogs.com/eqnedit.php?latex=(x&space;*&space;y)&space;*&space;z&space;\mapsto&space;a(List(a(List(x,y)),z)&space;\mapsto&space;List(a(List(x,y)),a(List(z)))&space;\mapsto&space;a(List(x,y,z))&space;\mapsto&space;List(a(List(x)),a(List(y,z)))&space;\mapsto&space;a(List(x),a(List(y,z)))&space;\mapsto&space;x&space;*&space;(y&space;*&space;z)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?(x&space;*&space;y)&space;*&space;z&space;\mapsto&space;a(List(a(List(x,y)),z)&space;\mapsto&space;List(a(List(x,y)),a(List(z)))&space;\mapsto&space;a(List(x,y,z))&space;\mapsto&space;List(a(List(x)),a(List(y,z)))&space;\mapsto&space;a(List(x),a(List(y,z)))&space;\mapsto&space;x&space;*&space;(y&space;*&space;z)" title="(x * y) * z \mapsto a(List(a(List(x,y)),z) \mapsto List(a(List(x,y)),a(List(z))) \mapsto a(List(x,y,z)) \mapsto List(a(List(x)),a(List(y,z))) \mapsto a(List(x),a(List(y,z))) \mapsto x * (y * z)" /></a>

Identity

<a href="https://www.codecogs.com/eqnedit.php?latex=x&space;*&space;e&space;\mapsto&space;a(List(x))&space;\mapsto&space;x" target="_blank"><img src="https://latex.codecogs.com/gif.latex?x&space;*&space;e&space;\mapsto&space;a(List(x))&space;\mapsto&space;x" title="x * e \mapsto a(List(x)) \mapsto x" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=e&space;*&space;x&space;\mapsto&space;a(List(x))&space;\mapsto&space;x" target="_blank"><img src="https://latex.codecogs.com/gif.latex?e&space;*&space;x&space;\mapsto&space;a(List(x))&space;\mapsto&space;x" title="e * x \mapsto a(List(x)) \mapsto x" /></a>
