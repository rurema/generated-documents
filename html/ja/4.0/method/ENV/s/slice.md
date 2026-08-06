# ENV.slice

### def ENV.slice(*keys) -> Hash

引数で指定されたキーとその値だけを含む Hash を返します。

```ruby title="例"
ENV["foo"] = "bar"
ENV["baz"] = "qux"
ENV["bar"] = "rab"
p ENV.slice()           # => {}
p ENV.slice("")         # => {}
p ENV.slice("unknown")  # => {}
p ENV.slice("foo", "baz") # => {"foo"=>"bar", "baz"=>"qux"}
```

- **SEE** [Hash#slice](../../../method/Hash/i/slice.md), [ENV.except](../../../method/ENV/s/except.md)
