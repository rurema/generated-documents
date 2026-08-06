# Module#singleton_class?

### def singleton_class? -> bool

self が特異クラスの場合に true を返します。そうでなければ false を返します。

```ruby title="例"
class C
end
p C.singleton_class?                # => false
p C.singleton_class.singleton_class?  # => true
```
