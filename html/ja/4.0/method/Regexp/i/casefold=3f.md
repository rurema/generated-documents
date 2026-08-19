# Regexp#casefold?

### def casefold? -> bool

`self` が大文字小文字の判定をしないようにコンパイルされていれば `true` を、そうでなければ `false` を返します。

```ruby title="例"
reg = Regexp.new("foobar", Regexp::IGNORECASE)
p reg.casefold? # => true

reg = Regexp.new("hogehoge")
p reg.casefold? # => false
```
