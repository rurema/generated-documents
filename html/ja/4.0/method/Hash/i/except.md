# Hash#except

### def except(*keys) -> Hash

引数で指定された以外のキーとその値だけを含む Hash を返します。

引数に指定されていて Hash に存在しないキーは無視されます。

```ruby
h = { a: 100, b: 200, c: 300 }
p h.except(:a) # => {:b=>200, :c=>300}
```

- **SEE** [Hash#slice](../../../method/Hash/i/slice.md), [ENV.except](../../../method/ENV/s/except.md)
