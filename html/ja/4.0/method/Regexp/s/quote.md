# Regexp.quote

### def Regexp.escape(string) -> String
### def Regexp.quote(string) -> String

string の中で正規表現において特別な意味を持つ文字の直前にエスケープ文字(バックスラッシュ)を挿入した文字列を返します。

- **param** `string` -- 正規表現において特別な意味をもつ文字をもつ文字列を指定します。

```ruby title="例"
rp = Regexp.escape("$bc^")
p rp # => "\\$bc\\^"
```
