# Matrix#rect

### def rectangular -> [Matrix, Matrix]
### def rect -> [Matrix, Matrix]

行列を実部と虚部に分解したものを返します。

```ruby title="例"
m.rect == [m.real, m.imag]  # ==> true for all matrices m
```

- **SEE** [Matrix#imaginary](../../../method/Matrix/i/imaginary.md), [Matrix#real](../../../method/Matrix/i/real.md)
