# Complex.polar

### def Complex.polar(r, theta = 0) -> Complex

絶対値が `r`、偏角が `theta` である [Complex](../../../class/Complex.md) クラスのオブジェクトを生成します。

複素数の極形式（polar form）に基づくためこの名があります。

- **param** `r` -- 生成する複素数の絶対値。

- **param** `theta` -- 生成する複素数の偏角。単位はラジアンです。省略した場合は 0 です。

```ruby title="例"
p Complex.polar(2.0)          # => (2.0+0.0i)
p Complex.polar(2.0, 0)       # => (2.0+0.0i)
p Complex.polar(2.0, Math::PI)  # => (-2.0+0.0i)
```
