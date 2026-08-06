# Symbol#capitalize

### def capitalize(*options) -> Symbol

シンボルに対応する文字列の先頭の文字を大文字に、残りを小文字に変更したシンボルを返します。

(self.to_s.capitalize.intern と同じです。)

```ruby
p :foobar.capitalize   #=> :Foobar
p :fooBar.capitalize   #=> :Foobar
p :FOOBAR.capitalize   #=> :Foobar
p :"foobar--".capitalize # => "Foobar--"
```

- **SEE** [String#capitalize](../../../method/String/i/capitalize.md)
