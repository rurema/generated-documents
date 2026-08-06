# GDBM#reject!

### def delete_if { |key, value|  ...  } -> self
### def reject! { |key, value|  ...  } -> self

ブロックを評価した値が真であれば該当する項目を削除します。

このメソッドは self を破壊的に変更します。
