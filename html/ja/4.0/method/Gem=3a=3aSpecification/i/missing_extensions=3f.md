# Gem::Specification#missing_extensions?

### def missing_extensions? -> bool
{: since="2.2.0"}

この spec に拡張ライブラリのビルドが必要なものが含まれていて、
かつまだビルドされていない場合に true を返します。

```ruby title="例"
spec = Gem::Specification.new { |s| s.name = "rfoo"; s.version = "1.0" }
p spec.missing_extensions?   # => false
```
