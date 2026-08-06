# Hash#slice

### def slice(*keys) -> Hash

引数で指定されたキーとその値だけを含む Hash を返します。

```ruby title="例"
h = { a: 100, b: 200, c: 300 }
p h.slice(:a)         # => {:a=>100}
p h.slice(:c, :b)     # => {:c=>300, :b=>200}
p h.slice(:b, :c, :d) # => {:b=>200, :c=>300}
```

- **SEE** [Hash#except](../../../method/Hash/i/except.md), [ENV.slice](../../../method/ENV/s/slice.md)
