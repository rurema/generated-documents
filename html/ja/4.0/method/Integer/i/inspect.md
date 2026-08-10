# Integer#inspect

### def to_s(base=10)    -> String
### def inspect(base=10) -> String
{: since=""}

`base` を基数とする位取り記数法で `self` を表した文字列を返します。

つまり「`base` 進法」による整数の表記を返します。デフォルトは 10 進法です。

`base` が 11 以上のとき、`"a"` から `"z"` までのアルファベットが 10〜35 を表す「数字」として用いられます。

```ruby
p 10.to_s     # => "10"
p 10.to_s(2)  # => "1010"
p 10.to_s(8)  # => "12"
p 10.to_s(16) # => "a"
p 35.to_s(36) # => "z"
```

- **return** --     数値の文字列表現
- **param** `base` -- 基数となる 2〜36 の整数。
- **raise** `ArgumentError` -- `base` に 2〜36 以外の数値を指定した場合に発生します。

- **SEE** [String#to_i](../../../method/String/i/to_i.md)
