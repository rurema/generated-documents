# OpenSSL::BN.new

### def OpenSSL::BN.new(str, base=10) -> OpenSSL::BN

文字列を多倍長整数オブジェクト([OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md))を生成します。

base で、変換方法(基数)を指定します。
デフォルトは 10 で、他に 16, 2, 0 を指定できます。

- **10**:

  引数の文字列を 10進数とみなして、変換します。

- **16**:

  引数の文字列を 16進数とみなして、変換します。

- **2**:

  引数の文字列を big-endian の符号無し整数のバイナリ列とみなして、変換します。

- **0**:

  引数の文字列を MPI形式の文字列(バイト列)とみなして、変換します
  (最初の4byteはbig-endianでデータ長を表わし、その後にそのデータ長のバイト列
  (big-endian)で数値を表す。最上位ビットが立っていると負数)。

```ruby
require 'openssl'

p OpenSSL::BN.new("-241") # => -241
p OpenSSL::BN.new("ff00",16) # => 65280
p OpenSSL::BN.new("\x81",2) # => 129
p OpenSSL::BN.new("\xff\x81",2) # => 65409
p OpenSSL::BN.new("\x00\x00\x00\x02\x00\x81", 0) # => 129
p OpenSSL::BN.new("\x00\x00\x00\x02\x80\x81", 0) # => -129
p OpenSSL::BN.new(1209) # => 1209
```

- **param** `str` -- 整数を表す文字列
- **param** `base` -- 文字列から整数に変換するときの基数
- **raise** `OpenSSL::BNError` -- 変換に失敗した場合に発生します

反対に、[OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) クラスのオブジェクトを文字列にするには、
[OpenSSL::BN#to_s](../../../method/OpenSSL=3a=3aBN/i/to_s.md) を用います。

- **SEE** [OpenSSL::BN#to_s](../../../method/OpenSSL=3a=3aBN/i/to_s.md)

### def OpenSSL::BN.new(bn) -> OpenSSL::BN

[OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) を複製して返します。

- **param** `bn` -- 複製する [OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) オブジェクト

### def OpenSSL::BN.new(integer) -> OpenSSL::BN

整数オブジェクト([Integer](../../../class/Integer.md))から多倍長整数オブジェクト
([OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md))を生成します。

- **param** `integer` -- 整数オブジェクト
- **SEE** [Integer#to_bn](../../../method/Integer/i/to_bn.md)
