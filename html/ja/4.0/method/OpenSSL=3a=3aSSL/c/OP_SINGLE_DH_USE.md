# OpenSSL::SSL::OP_SINGLE_DH_USE

### const OP_SINGLE_DH_USE -> Integer

一時的 DH 鍵を使うとき毎回鍵を生成するフラグです。

このオプションは「安全でない」素数を使って DH パラメータを生成したときに「small subgroup attack」を防ぐために必要です。
「安全な」素数を使った場合は必ずしも必要なオプションではありませんが、このオプションを使うことは推奨されています。

[OpenSSL::SSL::SSLContext#options=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/options=3d.md) で利用します。
