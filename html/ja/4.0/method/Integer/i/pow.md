# Integer#pow

### def pow(other) -> Numeric
### def pow(other, modulo) -> Integer

`self` の `other` 乗を返します。
`modulo` を指定しない場合は [Integer#**](../../../method/Integer/i/=2a=2a.md) と同じです。

- **param** `other` -- `self` に対する冪指数（べきしすう）
- **param** `modulo` -- 指定すると、計算途中に巨大な値を生成せずに `(self**other) % modulo` と同じ結果を返します。
- **raise** `TypeError` -- 2引数 `pow` で `other` や `modulo` に `Integer` 以外を指定した場合に発生します。
- **raise** `RangeError` -- 2引数 `pow` で `other` に負の数を指定した場合に発生します。
- **raise** `ArgumentError` -- 計算結果が巨大になりすぎる場合に発生します。

```ruby
p 2.pow(3) # => 8
p 3.pow(3,  8)  # =>  3
p 3.pow(3, -8)  # => -5
p 3.pow(2, -2)  # => -1
p -3.pow(3,  8) # =>  5
p -3.pow(3, -8) # => -3
p 5.pow(2, -8)  # => -7
```

- **SEE** [Integer#**](../../../method/Integer/i/=2a=2a.md)
