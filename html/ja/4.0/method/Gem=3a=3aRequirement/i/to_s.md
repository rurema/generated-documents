# Gem::Requirement#to_s

### def to_s -> String

条件を表す文字列を返します。

```ruby
req = Gem::Requirement.new(["< 5.0", ">= 1.9"])
p req.to_s # => "< 5.0, >= 1.9"
```
