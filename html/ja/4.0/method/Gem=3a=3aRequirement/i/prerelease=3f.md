# Gem::Requirement#prerelease?

### def prerelease? -> bool

何らかのバージョンがプレリリースのものであれば、true を返します。

```ruby
p Gem::Requirement.new("< 5.0").prerelease?   # => false
p Gem::Requirement.new("< 5.0a").prerelease?  # => true
```
