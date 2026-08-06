# Integer#nobits?

### def nobits?(mask) -> bool

`self & mask` のすべてのビットが `0` なら `true` を返します。

`self & mask == 0` と等価です。

- **param** `mask` -- ビットマスクを整数で指定します。

```ruby
p 42.nobits?(42)                 # => false
p 0b1010_1010.nobits?(0b1000_0010) # => false
p 0b1010_1010.nobits?(0b1000_0001) # => false
p 0b0100_0101.nobits?(0b1010_1010) # => true
```

- **SEE** [Integer#allbits?](../../../method/Integer/i/allbits=3f.md)
- **SEE** [Integer#anybits?](../../../method/Integer/i/anybits=3f.md)
