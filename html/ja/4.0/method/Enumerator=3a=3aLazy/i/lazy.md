# Enumerator::Lazy#lazy

### def lazy -> self

self を返します。

```ruby title="例"
lazy = (100..Float::INFINITY).lazy
p lazy.lazy         # => #<Enumerator::Lazy: 100..Infinity>
p lazy == lazy.lazy # => true
```
