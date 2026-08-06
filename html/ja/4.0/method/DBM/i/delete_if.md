# DBM#delete_if

### def reject! { |key, value|  ...  } -> self
### def delete_if { |key, value|  ...  } -> self

ブロックを評価した値が真であれば該当する要素を削除します。

このメソッドは self を破壊的に変更します。
