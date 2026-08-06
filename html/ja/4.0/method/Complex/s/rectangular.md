# Complex.rectangular

### def Complex.rect(r, i = 0)        -> Complex
### def Complex.rectangular(r, i = 0) -> Complex

実部が r、虚部が i である [Complex](../../../class/Complex.md) クラスのオブジェクトを生成します。

- **param** `r` -- 生成する複素数の実部。

- **param** `i` -- 生成する複素数の虚部。省略した場合は 0 です。

```ruby title="例"
p Complex.rect(1)         # => (1+0i)
p Complex.rect(1, 2)      # => (1+2i)
p Complex.rectangular(1, 2) # => (1+2i)
```

- **SEE** [Kernel?.Complex](../../../method/Kernel/m/Complex.md)
