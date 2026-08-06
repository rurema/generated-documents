# Kernel?.Complex

### module_function def Complex(r, i = 0, exception: true) -> Complex | nil
### module_function def Complex(s, exception: true)        -> Complex | nil

実部が r、虚部が i である [Complex](../../../class/Complex.md) クラスのオブジェクトを生成します。

- **param** `r` -- 生成する複素数の実部。

- **param** `i` -- 生成する複素数の虚部。省略した場合は 0 です。

- **param** `s` -- 生成する複素数を表す文字列。

- **param** `exception` -- false を指定すると、変換できなかった場合、
                 例外を発生する代わりに nil を返します。

- **raise** `ArgumentError` -- 変換できないオブジェクトを指定した場合に発生します。

```ruby title="例"
p Complex(1)     # => (1+0i)
p Complex(1, 2)  # => (1+2i)
p Complex('1+1i')  # => (1+1i)
p Complex('1+1j')  # => (1+1i)
# Complex.polar(10, 10) と同一。
p Complex('10@10') # => (-8.390715290764524-5.440211108893697i)
Complex('_')     # ~> ArgumentError
```

r にも i にも複素数と解釈されるオブジェクトを指定した場合には、
Complex(a, b) を a+bi として計算した [Complex](../../../class/Complex.md) オブジェクトを返します。

```ruby title="例"
p Complex('1+1i', '2+3i')                        # => (-2+3i)
p Complex('1+1i') + Complex('2+3i') * Complex('i') # => (-2+3i)
```

- **SEE** [Complex.rect](../../../method/Complex/s/rect.md)、[Complex.rectangular](../../../method/Complex/s/rectangular.md)

[注意] Complex.new、Complex.new! は 1.9 系では廃止されました。
