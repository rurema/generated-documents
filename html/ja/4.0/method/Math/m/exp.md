# Math?.exp

### module_function def exp(x) -> Float

`x` の指数関数（exponential）の値を返します。

すなわち e の `x` 乗の値を返します（e は自然対数の底）。

- **param** `x` -- 実数

- **raise** `TypeError` -- `x` に数値以外を指定した場合に発生します。

- **raise** `RangeError` -- `x` に実数以外の数値を指定した場合に発生します。

```ruby title="例"
p Math.exp(0)     # => 1.0
p Math.exp(1)     # => 2.718281828459045
p Math.exp(1.5)   # => 4.4816890703380645
```

`x` に負の無限大を渡した場合は `0.0` を返します。これは [Math?.log](../../../method/Math/m/log.md) が `0` に対して
`-Infinity` を返すことと対応しています。

```ruby title="例: 無限大を渡す"
p Math.exp(-Float::INFINITY)  # => 0.0
```

- **SEE** [man:exp(3)], [Math?.log](../../../method/Math/m/log.md)
