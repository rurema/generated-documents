# Enumerable#compact

### def compact -> Array

self から nil を取り除いた配列を生成して返します。

```ruby
def with_nils
  yield 1
  yield 2
  yield nil
  yield 3
end

p to_enum(:with_nils).compact # => [1, 2, 3]
```

- **SEE** [Array#compact](../../../method/Array/i/compact.md)
