# Math?.lgamma

### module_function def lgamma(x) -> [Float, Integer]

log(|gamma(x)|) と、gamma(x) の符号を返します。

符号は `+1` もしくは `-1` で返されます。

- **param** `x` -- 実数

- **raise** `TypeError` -- `x` に数値以外を指定した場合に発生します。

- **raise** `Math::DomainError` -- `x` に -∞ を渡した場合に発生します。

- **raise** `RangeError` -- `x` に実数以外の数値を指定した場合に発生します。

```ruby title="例"
p Math.lgamma(0) # => [Infinity, 1]
```

- **SEE** [Math?.gamma](../../../method/Math/m/gamma.md)
