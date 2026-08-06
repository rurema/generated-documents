# Encoding#ascii_compatible?

### def ascii_compatible? -> bool

自身が ASCII 互換のエンコーディングである場合真返します。
そうでない場合は偽を返します。

```ruby title="例"
p Encoding::UTF_8.ascii_compatible?   #=> true
p Encoding::UTF_16BE.ascii_compatible?  #=> false
```
