# Range#include?

### def include?(obj) -> bool
### def member?(obj) -> bool

obj が範囲内に含まれている時に true を返します。
そうでない場合は、false を返します。

<=> メソッドによる演算により範囲内かどうかを判定するには [Range#cover?](../../../method/Range/i/cover=3f.md) を使用してください。

始端・終端・引数が数値であれば、 [Range#cover?](../../../method/Range/i/cover=3f.md) と同様の動きをします。

- **param** `obj` -- 比較対象のオブジェクトを指定します。

```ruby title="例"
p ("a" .. "c").include?("b")  # => true
p ("a" .. "c").include?("B")  # => false
p ("a" .. "c").include?("ba") # => false
p ("a" .. "c").cover?("ba")   # => true

p (1 .. 3).include?(1.5) # => true
```

- **SEE** [spec/control#case](../../../doc/spec=2fcontrol.md#case)
- **SEE** [Range#cover?](../../../method/Range/i/cover=3f.md), [Range#===](../../../method/Range/i/=3d=3d=3d.md)
