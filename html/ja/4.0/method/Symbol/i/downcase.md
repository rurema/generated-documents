# Symbol#downcase

### def downcase(*options) -> Symbol

大文字を小文字に変換したシンボルを返します。

(self.to_s.downcase.intern と同じです。)

```ruby
p :FOO.downcase # => :foo
```

- **SEE** [String#downcase](../../../method/String/i/downcase.md)
