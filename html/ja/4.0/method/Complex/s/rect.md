# Complex.rect

### def Complex.rect(real, imag = 0)        -> Complex
### def Complex.rectangular(real, imag = 0) -> Complex

実部が `real`、虚部が `imag` である [Complex](../../../class/Complex.md) クラスのオブジェクトを生成します。

複素数の直交形式（rectangular form）に基づくためこの名があります。

- **param** `real` -- 生成する複素数の実部。

- **param** `imag` -- 生成する複素数の虚部。省略した場合は `0` です。

```ruby title="例"
p Complex.rect(1)         # => (1+0i)
p Complex.rect(1, 2)      # => (1+2i)
p Complex.rectangular(1, 2) # => (1+2i)
```

- **SEE** [Kernel?.Complex](../../../method/Kernel/m/Complex.md)
