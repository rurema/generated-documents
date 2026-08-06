# OpenSSL::Cipher::RC2.new

### def OpenSSL::Cipher::RC2.new(bit, mode) -> OpenSSL::Cipher::RC2
### def OpenSSL::Cipher::RC2.new(mode) -> OpenSSL::Cipher::RC2

RC2 暗号オブジェクトを生成します。

鍵長を整数もしくは文字列(40 or "40") bit で、モードを文字列 mode で指定します。

鍵長は省略可能です。

指定可能な鍵数とモードは [OpenSSL::Cipher.ciphers](../../../method/OpenSSL=3a=3aCipher/s/ciphers.md) で取得できます。

- **param** `bit` -- 鍵長整数/文字列
- **param** `mode` -- モード文字列
