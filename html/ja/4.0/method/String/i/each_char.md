# String#each_char

### def each_char {|cstr| block } -> self
### def each_char -> Enumerator

文字列の各文字に対して繰り返します。

たとえば、

```ruby
"hello世界".each_char {|c| print c, ' ' }
```

は次のように出力されます。

```text
h e l l o 世 界
```

- **SEE** [String#chars](../../../method/String/i/chars.md)
