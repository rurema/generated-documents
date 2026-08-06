# Net::POP3.new

### def Net::POP3.new(address, port = nil, apop = false) -> Net::POP3

[Net::POP3](../../../class/Net=3a=3aPOP3.md) オブジェクトを生成します。

このメソッドではサーバの接続は行いません。
apop が真のときは APOP 認証を行うオブジェクトを生成します。

port に nil を渡すと、適当なポート(通常は110、SSL利用時には 995)を使います。

- **param** `address` -- POP3サーバのホスト名文字列
- **param** `port` -- 接続するPOP3サーバのポート番号
- **param** `apop` -- 真の場合にはAPOPで認証します

- **SEE** [Net::POP3#start](../../../method/Net=3a=3aPOP3/i/start.md)
