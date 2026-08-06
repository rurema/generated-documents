# OpenSSL::BN#prime_fasttest?

### def prime_fasttest?(checks=nil, vtrivdiv=true) -> bool

自身が素数であるなら true を返します。

vtrivdiv が真である場合には、 Miller-Rabin 法での判定の前に小さな素数で割ることで素数か否かを調べます。自身が小さな素数である場合にはこの手順により素数ではないと誤った返り値を返します。

Miller-Rabin 法により確率的に判定します。
checksで指定した回数だけ繰り返します。
checksがnilである場合は OpenSSL が適切な回数を判断します。

```ruby
require 'openssl'

# 181 は 「小さな素数」である
p OpenSSL::BN.new("181").prime_fasttest?(nil, true) # => false
p OpenSSL::BN.new("181").prime_fasttest?(nil, false) # => true
```

- **param** `checks` -- Miller-Robin法の繰り返しの回数
- **param** `vtrivdiv` -- 真なら小さな素数で割ることでの素数判定を試みます
- **raise** `OpenSSL::BNError` -- 判定時にエラーが発生
- **SEE** [OpenSSL::BN#prime?](../../../method/OpenSSL=3a=3aBN/i/prime=3f.md)
