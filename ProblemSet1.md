# Problem set 1

Questions are from:

http://brendanfong.com/programmingcats_files/ps1.pdf

## Question 1: Functions in Haskell

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
1. <a href="https://www.codecogs.com/eqnedit.php?latex=P(2,1)=\phi" target="_blank"><img src="https://latex.codecogs.com/gif.latex?P(2,1)=\phi" title="P(2,1)=\emptyset" /></a>
1. {<a href="https://www.codecogs.com/eqnedit.php?latex=P(2,2)=\{&space;id_{2}&space;\}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?P(2,2)=\{&space;id_{2}&space;\}" title="P(2,2)=\{ id_{2} \}" /></a>

There are only 4 possible compositions:
1. f . id1
1. id2 . f
1. id1 . id1
1  id2 . id2

And because of the definition of f, id1 and id2 we have:
1. f . id1 (1) = f(1) so as 1 is the only possible value for f, f . id1 = f
1. id2 . f (1) = id2(2) = 2 = f(1) so as 1 is the only possible value for f, id2 . f = f

Associativity is also trivial:
1. (f . id1) . id1 = f . id1 = f . (id1 . id1)

## Question 3 : Isomorphism ?
Yes
* f . g (d) = f(c) = d so f . g = id for d
* g . f (c) = g(d) = c so g . f = id for c

## Question 4: Almost categories
### data with associative law but no unit law
* <a href="https://www.codecogs.com/eqnedit.php?latex=Ob(c)&space;:=&space;{&space;i&space;}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?Ob(c)&space;:=&space;{&space;i&space;}" title="Ob(c) := { i }" /></a>
* <a href="https://www.codecogs.com/eqnedit.php?latex=C(i,i)&space;=&space;\{&space;f_{n}&space;\forall&space;n&space;>=&space;1&space;\}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?C(i,i)&space;=&space;\{&space;f_{n}&space;\forall&space;n&space;>=&space;1&space;\}" title="C(i,i) = \{ f_{n} \forall n >= 1 \}" /></a>
* <a href="https://www.codecogs.com/eqnedit.php?latex=f_{n}&space;\cdot&space;f_{m}&space;=&space;f_{n&space;&plus;&space;m}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?f_{n}&space;\cdot&space;f_{m}&space;=&space;f_{n&space;&plus;&space;m}" title="f_{n} \cdot f_{m} = f_{n + m}" /></a>
* all morphisms are identity but as  <a href="https://www.codecogs.com/eqnedit.php?latex=f_{0}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?f_{0}" title="f_{0}" /></a> does not exist, the unit law does not hold

### data with no associative law but with unit law
* <a href="https://www.codecogs.com/eqnedit.php?latex=Ob(c)&space;:=&space;{&space;i&space;}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?Ob(c)&space;:=&space;{&space;i&space;}" title="Ob(c) := { i }" /></a>
* <a href="https://www.codecogs.com/eqnedit.php?latex=C(i,i)&space;=&space;\{id_{i},&space;f_{n}&space;\forall&space;n&space;\in&space;\mathbb{Z}&space;\}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?C(i,i)&space;=&space;\{id_{i},&space;f_{n}&space;\forall&space;n&space;\in&space;\mathbb{Z}&space;\}" title="C(i,i) = \{id_{i}, f_{n} \forall n \in \mathbb{Z} \}" /></a>
* <a href="https://www.codecogs.com/eqnedit.php?latex=f_{n}&space;\cdot&space;f_{m}&space;=&space;f_{n&space;-&space;m}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?f_{n}&space;\cdot&space;f_{m}&space;=&space;f_{n&space;-&space;m}" title="f_{n} \cdot f_{m} = f_{n - m}" /></a>
* Unit law is verified by <a href="https://www.codecogs.com/eqnedit.php?latex=id_{i}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?id_{i}" title="id_{i}" /></a>
* Associative law does not work for the following example:

<a href="https://www.codecogs.com/eqnedit.php?latex=(f_{3}&space;\cdot&space;f_{1})&space;\cdot&space;f_{1}&space;=&space;f_{2}&space;-&space;f_{1}&space;=&space;f_{1}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?(f_{3}&space;\cdot&space;f_{1})&space;\cdot&space;f_{1}&space;=&space;f_{2}&space;-&space;f_{1}&space;=&space;f_{1}" title="(f_{3} \cdot f_{1}) \cdot f_{1} = f_{2} - f_{1} = f_{1}" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=f_{3}&space;\cdot&space;(f_{1}&space;\cdot&space;f_{1})&space;=&space;f_{3}&space;-&space;f_{0}&space;=&space;f_{2}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?f_{3}&space;\cdot&space;(f_{1}&space;\cdot&space;f_{1})&space;=&space;f_{3}&space;-&space;f_{0}&space;=&space;f_{2}" title="f_{3} \cdot (f_{1} \cdot f_{1}) = f_{3} - f_{0} = f_{2}" /></a>


## Question 5: Monoids
### (a)
<a href="https://www.codecogs.com/eqnedit.php?latex=(\mathbb{N},&plus;,0)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?(\mathbb{N},&plus;,0)" title="(\mathbb{N},+,0)" /></a> is a monoid because 0 is the unit for the addition and the addition is associative
### (b) 
<a href="https://www.codecogs.com/eqnedit.php?latex=(List_{\{0,1\}},concatenation,[])" target="_blank"><img src="https://latex.codecogs.com/gif.latex?(List_{\{0,1\}},concatenation,[])" title="(List_{\{0,1\}},concatenation,[])" /></a> is a monoid because 
* adding an empty string to a string doesn't change the initial string (Unit law)
* concatenation is associative
### (c)
For every monoid <a href="https://www.codecogs.com/eqnedit.php?latex=(M,*,e)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?(M,*,e)" title="(M,*,e)" /></a> we can create a category such as:
1. <a href="https://www.codecogs.com/eqnedit.php?latex=Ob(c)={i}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?Ob(c)={i}" title="Ob(c)={i}" /></a>
2. <a href="https://www.codecogs.com/eqnedit.php?latex=C(i,i)&space;=&space;\{&space;f_{m}&space;\forall&space;m&space;\in&space;\mathbb{M}&space;\}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?C(i,i)&space;=&space;\{&space;f_{m}&space;\forall&space;m&space;\in&space;\mathbb{M}&space;\}" title="C(i,i) = \{ f_{m} \forall m \in \mathbb{M} \}" /></a>
3. <a href="https://www.codecogs.com/eqnedit.php?latex=f_{m}&space;\cdot&space;f_{n}&space;=&space;f_{m*n}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?f_{m}&space;\cdot&space;f_{n}&space;=&space;f_{m*n}" title="f_{m} \cdot f_{n} = f_{m*n}" /></a>
4. <a href="https://www.codecogs.com/eqnedit.php?latex=id_{i}&space;=&space;f_{e}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?id_{i}&space;=&space;f_{e}" title="id_{i} = f_{e}" /></a>

Unit: We have <a href="https://www.codecogs.com/eqnedit.php?latex=id_{i}&space;\cdot&space;f_{m}&space;=&space;f_{e}&space;\cdot&space;f_{m}&space;=&space;f_{e*m}&space;=&space;f_{m}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?id_{i}&space;\cdot&space;f_{m}&space;=&space;f_{e}&space;\cdot&space;f_{m}&space;=&space;f_{e*m}&space;=&space;f_{m}" title="id_{i} \cdot f_{m} = f_{e} \cdot f_{m} = f_{e*m} = f_{m}" /></a> (demonstrating the other rule is exactly the same)

Associative: <a href="https://www.codecogs.com/eqnedit.php?latex=(f_{m}&space;\cdot&space;f_{n})&space;\cdot&space;f_{k}&space;=&space;f_{m*n}&space;\cdot&space;f_{k}&space;=&space;f_{(m*m)*k}&space;=&space;f_{m*(n*k)}&space;=&space;f_{m}&space;\cdot&space;f_{n*k}&space;=&space;f_{m}&space;\cdot&space;(f_{n}&space;\cdot&space;f_{k})" target="_blank"><img src="https://latex.codecogs.com/gif.latex?(f_{m}&space;\cdot&space;f_{n})&space;\cdot&space;f_{k}&space;=&space;f_{m*n}&space;\cdot&space;f_{k}&space;=&space;f_{(m*m)*k}&space;=&space;f_{m*(n*k)}&space;=&space;f_{m}&space;\cdot&space;f_{n*k}&space;=&space;f_{m}&space;\cdot&space;(f_{n}&space;\cdot&space;f_{k})" title="(f_{m} \cdot f_{n}) \cdot f_{k} = f_{m*n} \cdot f_{k} = f_{(m*m)*k} = f_{m*(n*k)} = f_{m} \cdot f_{n*k} = f_{m} \cdot (f_{n} \cdot f_{k})" /></a>

## Question 6: Preorders
### a)
1 is the identify

<a href="https://www.codecogs.com/eqnedit.php?latex=P(12,12)&space;=&space;\{1\}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?P(12,12)&space;=&space;\{1\}" title="P(12,12) = \{1\}" /></a>
### b)
If <a href="https://www.codecogs.com/eqnedit.php?latex=x:a&space;\rightarrow&space;b" target="_blank"><img src="https://latex.codecogs.com/gif.latex?x:a&space;\rightarrow&space;b" title="x:a \rightarrow b" /></a>
is a morphism  then it exists <a href="https://www.codecogs.com/eqnedit.php?latex=n&space;\in&space;\mathbb{N}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?n&space;\in&space;\mathbb{N}" title="n \in \mathbb{N}" /></a> such as <a href="https://www.codecogs.com/eqnedit.php?latex=n*a&space;=&space;b" target="_blank"><img src="https://latex.codecogs.com/gif.latex?n*a&space;=&space;b" title="n*a = b" /></a>

Similarly it exists <a href="https://www.codecogs.com/eqnedit.php?latex=m&space;\in&space;\mathbb{N}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?m&space;\in&space;\mathbb{N}" title="m \in \mathbb{N}" /></a> such as <a href="https://www.codecogs.com/eqnedit.php?latex=m*b&space;=&space;c" target="_blank"><img src="https://latex.codecogs.com/gif.latex?m*b&space;=&space;c" title="m*b = c" /></a>

So we have <a href="https://www.codecogs.com/eqnedit.php?latex=c&space;=&space;m*b&space;=&space;m*n*a" target="_blank"><img src="https://latex.codecogs.com/gif.latex?c&space;=&space;m*b&space;=&space;m*n*a" title="c = m*b = m*n*a" /></a> which means <a href="https://www.codecogs.com/eqnedit.php?latex=y&space;\cdot&space;x&space;:&space;a&space;\rightarrow&space;c" target="_blank"><img src="https://latex.codecogs.com/gif.latex?y&space;\cdot&space;x&space;:&space;a&space;\rightarrow&space;c" title="y \cdot x : a \rightarrow c" /></a> is a morphism

### c)
There is an issue with 0 because <a href="https://www.codecogs.com/eqnedit.php?latex=P(0,n)&space;=&space;\mathbb{N}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?P(0,n)&space;=&space;\mathbb{N}" title="P(0,n) = \mathbb{N}" /></a> (<a href="https://www.codecogs.com/eqnedit.php?latex=\forall&space;i&space;\in&space;\mathbb{N},&space;0*i=0" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\forall&space;i&space;\in&space;\mathbb{N},&space;0*i=0" title="\forall i \in \mathbb{N}, 0*i=0" /></a>) so there is more than one morphism so it cannot be a pre order.

## Question 7: Church Booleans

I tried 2 different ways to evaluate the expressions:

* (AND True) False 
= ((\p (\q (pq) p) True) False 
= ((\q (False q) False) True) 
= (False True) False
= ((\x (\y x)) True) False
= (\y False) True
= False

* (OR False)
=(\p (\q (pp)q)) \x (\y y)
=(\q ((\x (\y y)) \x2 (\y2 y2)) q)
=(\q (\y y) q)

(OR False) True
=(\q (\y y) q) 
=(\y y) \x (\y2 x)
= \x (\y x)
= True

