# String#slice!

### def slice!(nth) -> String
### def slice!(pos, len) -> String
### def slice!(substr) -> String
### def slice!(regexp, nth = 0) -> String
### def slice!(first..last) -> String
### def slice!(first...last) -> String

指定した範囲 ([String#\[\]](../../../method/String/i/=5b=5d.md) 参照) を文字列から取り除いたうえで取り除いた部分文字列を返します。

引数が範囲外を指す場合は nil を返します。

```ruby title="例"
string = "this is a string"
p string.slice!(2)      # => "i"
p string.slice!(3..6)   # => " is "
p string.slice!(/s.*t/) # => "sa st"
p string.slice!("r")    # => "r"
p string                # => "thing"
```
