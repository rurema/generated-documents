# Symbol#upcase

### def upcase(*options) -> Symbol

小文字を大文字に変換したシンボルを返します。

(self.to_s.upcase.intern と同じです。)

```ruby
p :foo.upcase # => :FOO
```

- **SEE** [String#upcase](../../../method/String/i/upcase.md)
