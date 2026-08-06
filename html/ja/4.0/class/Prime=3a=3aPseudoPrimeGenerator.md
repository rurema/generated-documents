# class Prime::PseudoPrimeGenerator < Object

擬似素数列の列挙子のための抽象クラスです。

[Prime](../class/Prime.md) の各メソッドが使用する低水準の擬似素数列挙子は、 Prime::PseudoPrimeGenerator のインスタンスであることが期待されています。
このクラスを継承する具象クラスは succ, next, rewind をオーバーライドしなければなりません。

独自の素数列挙アルゴリズムを実装しようとする場合を除いて、ユーザーがこのクラスを利用する必要はありません。高水準の [Prime](../class/Prime.md) クラスを利用してください。

## Class Methods

- [new](../method/Prime=3a=3aPseudoPrimeGenerator/s/new.md)

## Instance Methods

- [each](../method/Prime=3a=3aPseudoPrimeGenerator/i/each.md)
- [each_with_index](../method/Prime=3a=3aPseudoPrimeGenerator/i/each_with_index.md)
- [with_index](../method/Prime=3a=3aPseudoPrimeGenerator/i/with_index.md)
- [next](../method/Prime=3a=3aPseudoPrimeGenerator/i/next.md)
- [succ](../method/Prime=3a=3aPseudoPrimeGenerator/i/succ.md)
- [rewind](../method/Prime=3a=3aPseudoPrimeGenerator/i/rewind.md)
- [upper_bound](../method/Prime=3a=3aPseudoPrimeGenerator/i/upper_bound.md)
- [upper_bound=](../method/Prime=3a=3aPseudoPrimeGenerator/i/upper_bound=3d.md)
- [with_object](../method/Prime=3a=3aPseudoPrimeGenerator/i/with_object.md)
