# Gem::Requirement#as_list

### def as_list -> [String]

必要条件を文字列の配列で返します。

```ruby
req = Gem::Requirement.new("< 5.0", ">= 1.9")
p req.as_list  # => ["< 5.0", ">= 1.9"]
```
