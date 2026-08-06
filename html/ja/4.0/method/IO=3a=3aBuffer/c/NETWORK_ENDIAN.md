# IO::Buffer::NETWORK_ENDIAN

### const LITTLE_ENDIAN -> Integer
### const BIG_ENDIAN -> Integer
### const HOST_ENDIAN -> Integer
### const NETWORK_ENDIAN -> Integer

バイトオーダー(エンディアン)を表す定数です。

HOST_ENDIAN は実行中の環境のバイトオーダーで、LITTLE_ENDIAN か BIG_ENDIAN のいずれかと同じ値になります。NETWORK_ENDIAN はネットワークバイトオーダーで、
BIG_ENDIAN と同じ値です。

```ruby
p IO::Buffer::NETWORK_ENDIAN == IO::Buffer::BIG_ENDIAN # => true

# リトルエンディアンの環境の場合
p IO::Buffer::HOST_ENDIAN == IO::Buffer::LITTLE_ENDIAN # => true
```
