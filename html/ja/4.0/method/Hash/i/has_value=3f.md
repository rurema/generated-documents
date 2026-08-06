# Hash#has_value?

### def has_value?(value) -> bool
### def value?(value)     -> bool

ハッシュが value を値として持つ時真を返します。
値の一致判定は == で行われます。

- **param** `value` -- 探索する値を指定します。

```ruby
p({1 => "one"}.value?("one")) #=> true
p({1 => "one"}.value?("two")) #=> false
```

- **SEE** [Hash#key?](../../../method/Hash/i/key=3f.md)
