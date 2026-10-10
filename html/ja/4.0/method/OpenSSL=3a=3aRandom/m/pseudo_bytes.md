# OpenSSL::Random?.pseudo_bytes

### module_function def pseudo_bytes(len) -> String

[OpenSSL::Random?.random_bytes](../../../method/OpenSSL=3a=3aRandom/m/random_bytes.md) の別名です。

Ruby 3.4 まで(openssl gem 3.x まで)は、OpenSSL 1.1.1 以降とリンクしてビルドした場合には定義されませんでした。
互換性のために残されているものなので、新しいコードでは [OpenSSL::Random?.random_bytes](../../../method/OpenSSL=3a=3aRandom/m/random_bytes.md) を使ってください。

- **param** `len` -- 必要なランダムバイト列の長さ

- **SEE** [OpenSSL::Random?.random_bytes](../../../method/OpenSSL=3a=3aRandom/m/random_bytes.md)
