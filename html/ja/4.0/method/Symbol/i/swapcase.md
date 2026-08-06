# Symbol#swapcase

### def swapcase(*options) -> Symbol

'A' から 'Z' までのアルファベット大文字を小文字に、'a' から 'z' までのアルファベット小文字を大文字に変更したシンボルを返します。

(self.to_s.swapcase.intern と同じです。)

```ruby
p :ABCxyz.swapcase   # => :abcXYZ
p :Access.swapcase   # => :aCCESS
```

- **SEE** [String#swapcase](../../../method/String/i/swapcase.md)
