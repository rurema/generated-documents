# OpenSSL::SSL::SSLContext#servername_cb=

### def servername_cb=(pr)

TLS の Server Name Indication(SNI) 拡張でクライアント側からホスト名が伝えられてきた場合に呼びだされるコールバックを設定します。

このコールバックはハンドシェイク時にクライアント側がサーバのホスト名を伝えてきた場合にサーバ側で呼びだされます。このコールバック内でサーバ側に提示する証明書を調整したりします。

[Proc](../../../class/Proc.md) や [Method](../../../class/Method.md) をコールバックオブジェクトとして渡します。コールバックに渡される引数は以下のように

```ruby invalid
proc{|sslsocket, hostname| ... }
```

2つで、1つ目は認証および暗号化通信に使われる [OpenSSL::SSL::SSLSocket](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLSocket.md)
オブジェクトで、2つ目がクライアント側から伝えられてきたホスト名です。

コールバックの返り値には認証と暗号化の設定を含んだ 
[OpenSSL::SSL::SSLContext](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLContext.md) オブジェクト、もしくは
nil を返さなければなりません。
これで得られたコンテキストオブジェクトが sslsocket に設定され、コンテキストが持っている証明書などの各情報を用いてハンドシェイクを継続します。
コールバックが nil を返した場合には sslsocket が用いるコンテキストは変更されません。

- **param** `pr` -- コールバックオブジェクト
- **SEE** [OpenSSL::SSL::SSLContext#servername_cb](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/servername_cb.md)
