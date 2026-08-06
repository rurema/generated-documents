# class Matrix < Object

数[Numeric](../class/Numeric.md)を要素とする行列を扱うクラスです。

行列

m * n 個の数a(i,j)を

```text
[ a(0,0) a(0,1) a(0,2)  a(0,3) ... a(0,n-1)   ]
[ a(1,0) a(1,1) a(1,2)  a(1,3) ... a(1,n-1)   ]
[ a(2,0) a(2,1) a(2,2)  a(2,3) ... a(2,n-1)   ]
[                                             ]
[ a(m-1,0)                         a(m-1,n-1) ]
```

のように、縦横の表にあらわしたものを(m,n)型の行列といいます。
m=nの行列をm次の正方行列(square matrix)といいます。
インデックスは 0 から始まることに注意してください。

上からi番目の横の数の並びを第i行(the i-th row)、左からj番目の縦の数の並びを第j列(the j-th column)といいます。

(m,n)型行列は、大きさnの行(横)ベクトルをm個縦に並べたものとみなすこともできますし、大きさmの列(縦)ベクトルをn個横に並べたものとみなすこともできます。

第i行、第j列にある数a(i,j)を(i,j)要素(the (i,j)-th element)といいます。

i=jの要素a(i,j)を対角要素(diagonal element)、それ以外の要素を非対角要素(nondiagonal element)といいます。

## Class Methods

- [\[\]](../method/Matrix/s/=5b=5d.md)
- [I](../method/Matrix/s/I.md)
- [identity](../method/Matrix/s/identity.md)
- [unit](../method/Matrix/s/unit.md)
- [build](../method/Matrix/s/build.md)
- [column_vector](../method/Matrix/s/column_vector.md)
- [columns](../method/Matrix/s/columns.md)
- [combine](../method/Matrix/s/combine.md)
- [diagonal](../method/Matrix/s/diagonal.md)
- [empty](../method/Matrix/s/empty.md)
- [hstack](../method/Matrix/s/hstack.md)
- [row_vector](../method/Matrix/s/row_vector.md)
- [rows](../method/Matrix/s/rows.md)
- [scalar](../method/Matrix/s/scalar.md)
- [vstack](../method/Matrix/s/vstack.md)
- [zero](../method/Matrix/s/zero.md)

## Instance Methods

- [*](../method/Matrix/i/=2a.md)
- [**](../method/Matrix/i/=2a=2a.md)
- [+](../method/Matrix/i/=2b.md)
- [+@](../method/Matrix/i/=2b=40.md)
- [-](../method/Matrix/i/=2d.md)
- [-@](../method/Matrix/i/=2d=40.md)
- [/](../method/Matrix/i/=2f.md)
- [==](../method/Matrix/i/=3d=3d.md)
- [eql?](../method/Matrix/i/eql=3f.md)
- [\[\]](../method/Matrix/i/=5b=5d.md)
- [component](../method/Matrix/i/component.md)
- [element](../method/Matrix/i/element.md)
- [\[\]=](../method/Matrix/i/=5b=5d=3d.md)
- [adjugate](../method/Matrix/i/adjugate.md)
- [antisymmetric?](../method/Matrix/i/antisymmetric=3f.md)
- [skew_symmetric?](../method/Matrix/i/skew_symmetric=3f.md)
- [coerce](../method/Matrix/i/coerce.md)
- [cofactor](../method/Matrix/i/cofactor.md)
- [cofactor_expansion](../method/Matrix/i/cofactor_expansion.md)
- [laplace_expansion](../method/Matrix/i/laplace_expansion.md)
- [collect](../method/Matrix/i/collect.md)
- [map](../method/Matrix/i/map.md)
- [collect!](../method/Matrix/i/collect=21.md)
- [map!](../method/Matrix/i/map=21.md)
- [column](../method/Matrix/i/column.md)
- [column_count](../method/Matrix/i/column_count.md)
- [column_size](../method/Matrix/i/column_size.md)
- [column_vectors](../method/Matrix/i/column_vectors.md)
- [combine](../method/Matrix/i/combine.md)
- [conj](../method/Matrix/i/conj.md)
- [conjugate](../method/Matrix/i/conjugate.md)
- [det](../method/Matrix/i/det.md)
- [determinant](../method/Matrix/i/determinant.md)
- [det_e](../method/Matrix/i/det_e.md)
- [determinant_e](../method/Matrix/i/determinant_e.md)
- [diagonal?](../method/Matrix/i/diagonal=3f.md)
- [each](../method/Matrix/i/each.md)
- [each_with_index](../method/Matrix/i/each_with_index.md)
- [eigen](../method/Matrix/i/eigen.md)
- [eigensystem](../method/Matrix/i/eigensystem.md)
- [elements_to_f](../method/Matrix/i/elements_to_f.md)
- [elements_to_i](../method/Matrix/i/elements_to_i.md)
- [elements_to_r](../method/Matrix/i/elements_to_r.md)
- [empty?](../method/Matrix/i/empty=3f.md)
- [entrywise_product](../method/Matrix/i/entrywise_product.md)
- [hadamard_product](../method/Matrix/i/hadamard_product.md)
- [find_index](../method/Matrix/i/find_index.md)
- [index](../method/Matrix/i/index.md)
- [first_minor](../method/Matrix/i/first_minor.md)
- [hash](../method/Matrix/i/hash.md)
- [hermitian?](../method/Matrix/i/hermitian=3f.md)
- [hstack](../method/Matrix/i/hstack.md)
- [imag](../method/Matrix/i/imag.md)
- [imaginary](../method/Matrix/i/imaginary.md)
- [inspect](../method/Matrix/i/inspect.md)
- [inv](../method/Matrix/i/inv.md)
- [inverse](../method/Matrix/i/inverse.md)
- [lower_triangular?](../method/Matrix/i/lower_triangular=3f.md)
- [lup](../method/Matrix/i/lup.md)
- [lup_decomposition](../method/Matrix/i/lup_decomposition.md)
- [minor](../method/Matrix/i/minor.md)
- [normal?](../method/Matrix/i/normal=3f.md)
- [orthogonal?](../method/Matrix/i/orthogonal=3f.md)
- [permutation?](../method/Matrix/i/permutation=3f.md)
- [rank](../method/Matrix/i/rank.md)
- [rank_e](../method/Matrix/i/rank_e.md)
- [real](../method/Matrix/i/real.md)
- [real?](../method/Matrix/i/real=3f.md)
- [rect](../method/Matrix/i/rect.md)
- [rectangular](../method/Matrix/i/rectangular.md)
- [regular?](../method/Matrix/i/regular=3f.md)
- [round](../method/Matrix/i/round.md)
- [row](../method/Matrix/i/row.md)
- [row_count](../method/Matrix/i/row_count.md)
- [row_size](../method/Matrix/i/row_size.md)
- [row_vectors](../method/Matrix/i/row_vectors.md)
- [singular?](../method/Matrix/i/singular=3f.md)
- [square?](../method/Matrix/i/square=3f.md)
- [symmetric?](../method/Matrix/i/symmetric=3f.md)
- [t](../method/Matrix/i/t.md)
- [transpose](../method/Matrix/i/transpose.md)
- [to_a](../method/Matrix/i/to_a.md)
- [to_s](../method/Matrix/i/to_s.md)
- [tr](../method/Matrix/i/tr.md)
- [trace](../method/Matrix/i/trace.md)
- [unitary?](../method/Matrix/i/unitary=3f.md)
- [upper_triangular?](../method/Matrix/i/upper_triangular=3f.md)
- [vstack](../method/Matrix/i/vstack.md)
- [zero?](../method/Matrix/i/zero=3f.md)
