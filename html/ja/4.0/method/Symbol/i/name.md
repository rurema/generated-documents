# Symbol#name

### def name -> String

シンボルに対応する文字列を返します。

[Symbol#to_s](../../../method/Symbol/i/to_s.md)と違って freeze された文字列を返します。

```ruby
p :fred.name         # => "fred"
p :fred.name.frozen? # => true
p :fred.to_s         # => "fred"
p :fred.to_s.frozen? # => false
```

- **SEE** [Symbol#to_s](../../../method/Symbol/i/to_s.md)
