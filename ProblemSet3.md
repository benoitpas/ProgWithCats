# Problem set 3

Questions are from:

http://brendanfong.com/programmingcats_files/ps3.pdf

## Question 1: Pullbacks and limits

As A is the constant category the definition of <a href="https://www.codecogs.com/eqnedit.php?latex=\pi_1" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\pi_1" title="\pi_1" /></a> and <a href="https://www.codecogs.com/eqnedit.php?latex=\pi_2" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\pi_2" title="\pi_2" /></a> is quite straightforward:

a. The object is <a href="https://www.codecogs.com/eqnedit.php?latex=\mathbb{N}&space;\rtimes&space;_{1}\textrm{\mathbb{B}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mathbb{N}&space;\rtimes&space;_{1}\textrm{\mathbb{B}}" title="\mathbb{N} \rtimes _{1}\textrm{\mathbb{B}}" /></a> and

<a href="https://www.codecogs.com/eqnedit.php?latex=\pi_1:\mathbb{N}*\underline{1}^{\mathbb{B}}&space;\rightarrow&space;\mathbb{N}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\pi_1:\mathbb{N}*\underline{1}^{\mathbb{B}}&space;\rightarrow&space;\mathbb{N}" title="\pi_1:\mathbb{N}*\underline{1}^{\mathbb{B}} \rightarrow \mathbb{N}" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=(n,b\rightarrow&space;1)&space;\rightarrow&space;n" target="_blank"><img src="https://latex.codecogs.com/gif.latex?(n,b\rightarrow&space;1)&space;\rightarrow&space;n" title="(n,b\rightarrow 1) \rightarrow n" /></a>



<a href="https://www.codecogs.com/eqnedit.php?latex=\pi_2:\mathbb{N}*\underline{1}^{\mathbb{B}}&space;\rightarrow&space;\mathbb{B}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\pi_2:\mathbb{N}*\underline{1}^{\mathbb{B}}&space;\rightarrow&space;\mathbb{B}" title="\pi_2:\mathbb{N}*\underline{1}^{\mathbb{B}} \rightarrow \mathbb{B}" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=(n,b\rightarrow&space;1)&space;\rightarrow&space;b" target="_blank"><img src="https://latex.codecogs.com/gif.latex?(n,b\rightarrow&space;1)&space;\rightarrow&space;b" title="(n,b\rightarrow 1) \rightarrow b" /></a>

b. The object is <a href="https://www.codecogs.com/eqnedit.php?latex=\mathbb{X}&space;\rtimes&space;_{1}\textrm{\mathbb{Y}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mathbb{X}&space;\rtimes&space;_{1}\textrm{\mathbb{Y}}" title="\mathbb{X} \rtimes _{1}\textrm{\mathbb{Y}}" /></a> and

<a href="https://www.codecogs.com/eqnedit.php?latex=\pi_1:X*\underline{1}^{Y}&space;\rightarrow&space;X" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\pi_1:X*\underline{1}^{Y}&space;\rightarrow&space;X" title="\pi_1:X*\underline{1}^{Y} \rightarrow X" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=(x,y\rightarrow&space;1)&space;\rightarrow&space;x" target="_blank"><img src="https://latex.codecogs.com/gif.latex?(x,y\rightarrow&space;1)&space;\rightarrow&space;x" title="(x,y\rightarrow 1) \rightarrow x" /></a>


<a href="https://www.codecogs.com/eqnedit.php?latex=\pi_1:X*\underline{1}^{Y}&space;\rightarrow&space;Y" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\pi_1:X*\underline{1}^{Y}&space;\rightarrow&space;Y" title="\pi_1:X*\underline{1}^{Y} \rightarrow Y" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=(x,y\rightarrow&space;1)&space;\rightarrow&space;y" target="_blank"><img src="https://latex.codecogs.com/gif.latex?(x,y\rightarrow&space;1)&space;\rightarrow&space;y" title="(x,y\rightarrow 1) \rightarrow y" /></a>

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
