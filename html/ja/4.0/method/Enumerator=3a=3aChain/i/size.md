# Enumerator::Chain#size

### def size -> Integer | Float::INFINITY | nil

合計の要素数を返します。

それぞれの列挙可能なオブジェクトのサイズの合計値を返します。
ただし、列挙可能なオブジェクトが1つでも nil か [Float::INFINITY](../../../method/Float/c/INFINITY.md)
を返した場合、それを合計の要素数として返します。
