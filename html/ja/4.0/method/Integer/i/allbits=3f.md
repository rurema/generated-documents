# Integer#allbits?

### def allbits?(mask) -> bool

`mask` で `1` が立っているビットがすべて `self` でも `1` なら `true` を返します。

`self & mask == mask` と等価です。

- **param** `mask` -- ビットマスクを整数で指定します。

```ruby
p 42.allbits?(42)                 # => true
p 0b1010_1010.allbits?(0b1000_0010) # => true
p 0b1010_1010.allbits?(0b1000_0001) # => false
p 0b1000_0010.allbits?(0b1010_1010) # => false
```

- **SEE** [Integer#anybits?](../../../method/Integer/i/anybits=3f.md)
- **SEE** [Integer#nobits?](../../../method/Integer/i/nobits=3f.md)
