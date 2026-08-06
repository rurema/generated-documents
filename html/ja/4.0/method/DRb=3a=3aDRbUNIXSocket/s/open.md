# DRb::DRbUNIXSocket.open

### def DRb::DRbUNIXSocket.open(uri, config) -> DRb::DRbUNIXSocket

uri で指定した UNIX ドメインソケットに接続します。

- **param** `uri` -- "drbunix:パス" という形式の URI を指定します。

- **param** `config` -- 接続の設定を [Hash](../../../class/Hash.md) で指定します。

- **raise** `DRb::DRbBadScheme` -- uri が "drbunix:" で始まらない場合に発生します。
