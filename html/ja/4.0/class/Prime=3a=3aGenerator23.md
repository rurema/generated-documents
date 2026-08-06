# class Prime::Generator23 < Prime::PseudoPrimeGenerator

2と3と、3 より大きくて 2 でも 3 でも割り切れない全ての整数を生成します。

ある整数の素数性を擬似素数による試し割りでチェックする場合、このように低精度だが高速でメモリを消費しない擬似素数生成器が適しています。

一方、 [Prime#each](../method/Prime/i/each.md) のように素数列を生成する目的にはまったく役に立ちません。

## Instance Methods

- [next](../method/Prime=3a=3aGenerator23/i/next.md)
- [succ](../method/Prime=3a=3aGenerator23/i/succ.md)
- [rewind](../method/Prime=3a=3aGenerator23/i/rewind.md)
