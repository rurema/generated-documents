# DRb::DRbUNIXSocket.open_server

### def DRb::DRbUNIXSocket.open_server(uri, config) -> DRb::DRbUNIXSocket

uri で指定したパスに UNIX ドメインソケットを作成し、接続を待ち受けます。

パスの部分を省略した場合(例: "drbunix:")は、一時ファイルにソケットを作成します。

- **param** `uri` -- "drbunix:パス" という形式の URI を指定します。

- **param** `config` -- 接続の設定を [Hash](../../../class/Hash.md) で指定します。
             `:UNIXFileMode`、`:UNIXFileOwner`、`:UNIXFileGroup` を指定できます。
             詳細は [drb/unix](../../../library/drb=2funix.md) を参照してください。
