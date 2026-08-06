# Random#bytes

### def bytes(size) -> String

ランダムなバイナリー文字列を返します。結果の文字列のサイズを指定できます。

- **param** `size` -- 結果の文字列のサイズをバイト数で指定します。

```ruby title="例"
r2 = Random.new(1)
p r2.bytes(10) # => "%\xF4\xC1j\xEB\x80G\xFF\x8C/"
```

- **SEE** [Random.bytes](../../../method/Random/s/bytes.md)
