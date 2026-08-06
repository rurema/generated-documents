# OpenSSL::Engine.load

### def OpenSSL::Engine.load(name = nil) -> true | nil

Engine をロードします。

このメソッドは openssl のコンパイル時に静的にコンパイルされたものを読み込みます。

name で指定した engine をロードします。以下が指定可能です。
  - "dynamic"
  - "cswift"
  - "chil"
  - "atalla"
  - "nuron"
  - "ubsec"
  - "aep"
  - "sureware"
  - "4758cca"
  - "openbsd_dev_crypto"
  - "openssl"
引数を省略した場合はロード可能なすべての engine をロードします。

動的な読み込みをしたい場合は [OpenSSL::Engine.by_id](../../../method/OpenSSL=3a=3aEngine/s/by_id.md) を用います。

ロードに成功した場合は true を返します。

- **param** `name` -- ロードする engine の名前(文字列)
- **SEE** [OpenSSL::Engine.cleanup](../../../method/OpenSSL=3a=3aEngine/s/cleanup.md)
