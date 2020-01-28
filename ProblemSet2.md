# Problem set 2

Questions are from:

http://brendanfong.com/programmingcats_files/ps2.pdf

## Question 1: Functors out of Set
1. All sets are mapped to '1' and all morphims are mapped to <a href="https://www.codecogs.com/eqnedit.php?latex=id_{1}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?id_{1}" title="id_{1}" /></a>

Because:
* <a href="https://www.codecogs.com/eqnedit.php?latex=\forall&space;s&space;\in&space;Ob(\mathbb{S}),&space;F(id_s)=id_{1}=id_{F(s)}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\forall&space;s&space;\in&space;Ob(\mathbb{S}),&space;F(id_s)=id_{1}=id_{F(s)}" title="\forall s \in Ob(\mathbb{S}), F(id_s)=id_{1}=id_{F(s)}" /></a>
* <a href="https://www.codecogs.com/eqnedit.php?latex=F(g&space;\cdot&space;f)&space;=&space;id_1&space;=&space;id_1&space;\cdot&space;id_1&space;=&space;F(g)&space;\cdot&space;F(f)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?F(g&space;\cdot&space;f)&space;=&space;id_1&space;=&space;id_1&space;\cdot&space;id_1&space;=&space;F(g)&space;\cdot&space;F(f)" title="F(g \cdot f) = id_1 = id_1 \cdot id_1 = F(g) \cdot F(f)" /></a>

2. Similarly, all sets can be mapped to '2' and all morphims are mapped to <a href="https://www.codecogs.com/eqnedit.php?latex=id_{2}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?id_{2}" title="id_{2}" /></a>

3. Also, all sets can be mapped to '3' and all morphims are mapped to <a href="https://www.codecogs.com/eqnedit.php?latex=id_{3}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?id_{3}" title="id_{3}" /></a>

4. <a href="https://www.codecogs.com/eqnedit.php?latex=\emptyset" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\emptyset" title="\emptyset" /></a> is mapped to '1' and all sets mapped to '2'

Because
* <a href="https://www.codecogs.com/eqnedit.php?latex=F(id_{\emptyset})=id_1=id_{F\(\emptyset)}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?F(id_{\emptyset})=id_1=id_{F\(\emptyset)}" title="F(id_{\emptyset})=id_1=id_{F\(\emptyset)}" /></a> and <a href="https://www.codecogs.com/eqnedit.php?latex=F(id_{s})=id_2=id_{F\(s)}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?F(id_{s})=id_2=id_{F\(s)}" title="F(id_{s})=id_2=id_{F\(s)}" /></a> for all Sets 's' which are not the empty set
* All morphisms from the empty set to the empty set are mapped to <a href="https://www.codecogs.com/eqnedit.php?latex=id_1" target="_blank"><img src="https://latex.codecogs.com/gif.latex?id_1" title="id_1" /></a>, all morphisms from the empty set to a non empty set are mapped to 'a' and all morphisms from non empty set to non empty sets are mapped to <a href="https://www.codecogs.com/eqnedit.php?latex=id_2" target="_blank"><img src="https://latex.codecogs.com/gif.latex?id_2" title="id_2" /></a>. There are no morphisms from non empty set to the empty set (because the empty set does not have any target object).

For  f : X → Y and g : Y → Z {\displaystyle g\colon Y\to Z, the possible compositions are:

|X|Y|Z|Proof|
|-|-|-|-----|
|non empty set|non empty set|non empty set|<a href="https://www.codecogs.com/eqnedit.php?latex=(g&space;\cdot&space;f)&space;=&space;id_2&space;=&space;id_2&space;\cdot&space;\id2&space;=&space;F(g)&space;\cdot&space;F(f)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?(g&space;\cdot&space;f)&space;=&space;id_2&space;=&space;id_2&space;\cdot&space;\id2&space;=&space;F(g)&space;\cdot&space;F(f)" title="(g \cdot f) = id_2 = id_2 \cdot \id2 = F(g) \cdot F(f)" /></a>|
|empty set|non empty set| non empty set|<a href="https://www.codecogs.com/eqnedit.php?latex=F(g&space;\cdot&space;f)&space;=&space;a&space;=&space;id_2&space;\cdot&space;a&space;=&space;F(g)&space;\cdot&space;F(f)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?F(g&space;\cdot&space;f)&space;=&space;a&space;=&space;id_2&space;\cdot&space;a&space;=&space;F(g)&space;\cdot&space;F(f)" title="F(g \cdot f) = a = id_2 \cdot a = F(g) \cdot F(f)" /></a>|
|empty set|empty set|non empty set|<a href="https://www.codecogs.com/eqnedit.php?latex=F(g&space;\cdot&space;f)&space;=&space;a&space;=&space;a&space;\cdot&space;id_1&space;=&space;F(g)&space;\cdot&space;F(f)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?F(g&space;\cdot&space;f)&space;=&space;a&space;=&space;a&space;\cdot&space;id_1&space;=&space;F(g)&space;\cdot&space;F(f)" title="F(g \cdot f) = a = a \cdot id_1 = F(g) \cdot F(f)" /></a>|


5. <a href="https://www.codecogs.com/eqnedit.php?latex=\emptyset" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\emptyset" title="\emptyset" /></a> is mapped to '1' and all sets mapped to '3' with all morphisms from the empty set to a non empty set are mapped to 'b . a' 

6. <a href="https://www.codecogs.com/eqnedit.php?latex=\emptyset" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\emptyset" title="\emptyset" /></a> is mapped to '2' and all sets mapped to '3' and all morphisms from the empty set to a non empty set are mapped to 'b' 

## Question 2. Constant functors
a. With <a href="https://www.codecogs.com/eqnedit.php?latex=K_B" target="_blank"><img src="https://latex.codecogs.com/gif.latex?K_B" title="K_B" /></a> all elements are mapped to set<a href="https://www.codecogs.com/eqnedit.php?latex=B=\{&space;T,F&space;\}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?B=\{&space;T,F&space;\}" title="B=\{ T,F \}" /></a> and all morphisms are mapped to the identity function <a href="https://www.codecogs.com/eqnedit.php?latex=Id_B" target="_blank"><img src="https://latex.codecogs.com/gif.latex?Id_B" title="Id_B" /></a> so it is obvious the preservation of identities and composition laws are true.

b.

```haskell
data BooleanFunctor a = BooleanFunctor Bool

instance Functor BooleanFunctor where
  fmap f (BooleanFunctor a) = BooleanFunctor a
```

## Question 3. The naturality of the diagonal


