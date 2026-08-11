# DRb?.start_service

### module_function def start_service(uri=nil, front=nil, config_or_acl=nil) -> ()

dRuby のサービス(サーバ)を起動します。

これで起動したサーバはプロセスのプライマリサーバとなります。
すでにプライマリサーバが存在する場合は上書きされます。

uri に URI を文字列で指定すると、それに起動したサービスを bind します。
通常は 'druby://<hostname>:<port>' という形式の URI を指定します。
このときは TCP が通信手段として使われます。
'drbunix:' のような他のプロトコルを指定することもできます。

front でフロントオブジェクト(URI に結び付けられるオブジェクト)を設定します。

config で Hash で設定を渡します。以下の項目が利用できます。

- **`:idconv`**:
  dRuby内部で識別子とオブジェクトを相互に変換するためのオブジェクト。
  デフォルトは [DRb::DRbIdConv](../../../class/DRb=3a=3aDRbIdConv.md) のインスタンス。
- **`:verbose`**:
  真を指定すると失敗したdRuby経由のメソッドのログを
  [m:$stdout] に出力します。デフォルトは false。
- **`:tcp_acl`**:
  サーバに設定する ACL(Access Control List)。詳しくは [ACL](../../../class/ACL.md)
  を見てください。デフォルトは nil(設定しない)。
- **`:load_limit`**:
  サーバが受け付けるメッセージの最大バイト数。デフォルトは
  26214400(25MB)
- **`:argc_limit`**:
  サーバが受け付けるリモートメソッド呼出の引数の最大個数。
  デフォルトは256。
- **`:auto_load`**:
  真に設定すると、
  URIで指定されたプロトコルを取り扱うのに必要なDRbのサブライブラリが自動的にロードされます。デフォルトは true。
- **`:safe_level`**:
  リモートからのメソッド呼出しメッセージを受け取ったときに対応するローカルオブジェクトのメソッド呼出をする前にスレッドに設定されるセーフレベル([m:$SAFE])の値。
  デフォルト値は0。

デフォルト値は [DRb::DRbServer](../../../class/DRb=3a=3aDRbServer.md) の以下のクラスメソッドによって変更できます。
  - [DRb::DRbServer.default_acl](../../../method/DRb=3a=3aDRbServer/s/default_acl.md)
  - [DRb::DRbServer.default_argc_limit](../../../method/DRb=3a=3aDRbServer/s/default_argc_limit.md)
  - [DRb::DRbServer.default_id_conv](../../../method/DRb=3a=3aDRbServer/s/default_id_conv.md)
  - [DRb::DRbServer.default_load_limit](../../../method/DRb=3a=3aDRbServer/s/default_load_limit.md)
  - [DRb::DRbServer.verbose=](../../../method/DRb=3a=3aDRbServer/s/verbose=3d.md)

config に Hash以外を渡すと、ACL(Access Control List)として取り扱われます。

起動したサーバはただちに接続を待ち受けます。

- **param** `uri` -- 起動するサービスを bind する URI の文字列
- **param** `front` -- フロントオブジェクト
- **param** `config` -- オプション設定の [Hash](../../../class/Hash.md)

- **raise** `DRb::DRbBadURI` -- URI の scheme が不正(サポートされていないものである)場合に
       発生します

- **SEE** [DRb?.primary_server](../../../method/DRb/m/primary_server.md), [DRb::DRbServer.new](../../../method/DRb=3a=3aDRbServer/s/new.md)
