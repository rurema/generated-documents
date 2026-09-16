# SecureRandom.bytes

### def SecureRandom.bytes(n) -> String
{: since="2.4.0"}

n バイトの乱数を生成し、バイナリの文字列として返します。

- **param** `n` -- 生成する文字列のバイト数を整数で指定します。

- **raise** `NotImplementedError` -- 安全な乱数発生器が使えない場合に発生します。

```ruby title="例"
require 'securerandom'
p SecureRandom.bytes(10) # => "\"\xCD\x9E\xE0\x9C0\xEF\xB2I\xAB"
```

- **SEE** [SecureRandom.random_bytes](../../../method/SecureRandom/s/random_bytes.md)
