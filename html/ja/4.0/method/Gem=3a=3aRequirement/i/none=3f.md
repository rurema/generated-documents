# Gem::Requirement#none?

### def none? -> bool

自身が条件を持たない場合は、true を返します。

```ruby
req = Gem::Requirement.new(">= 0")
p req.none?  # => true
```
