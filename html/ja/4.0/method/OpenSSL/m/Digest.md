# OpenSSL?.Digest

### module_function def Digest(name) -> Class

name に対応する [OpenSSL::Digest](../../../class/OpenSSL=3a=3aDigest.md) のサブクラスを返します。

- **param** `name` -- ダイジェストアルゴリズムの名前を表す文字列("MD5" や "SHA256" など)
- **raise** `NameError` -- name に対応するクラスが無い場合に発生します

```ruby title="例"
require "openssl"

p OpenSSL.Digest("MD5") # => OpenSSL::Digest::MD5
```
