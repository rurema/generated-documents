# OpenSSL::SSL::SSLContext#tmp_dh_callback=

### def tmp_dh_callback=(cb)

一時的 DH 鍵を生成するためのコールバックを設定します。

コールバックには [Proc](../../../class/Proc.md) や [Method](../../../class/Method.md) を渡します。

暗号で一時的な DH 鍵を利用する場合にはこのコールバックが呼びだされ、呼びだされたブロックは適切な鍵パラメータを返さなければなりません。これで設定するブロックは

```ruby invalid
proc{|sslsocket, is_export, keylen| ... }
```

という引数を取るようにします。それぞれの引数の意味は
  - sslsocket 通信に使われる [OpenSSL::SSL::SSLSocket](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLSocket.md) オブジェクト
  - is_export 輸出規制のある暗号を利用するかどうかを0か0以外かで指定
  - keylen 鍵長
となります。ブロックの返り値には適切な鍵パラメータを含む
[OpenSSL::PKey::DH](../../../class/OpenSSL=3a=3aPKey=3a=3aDH.md) オブジェクトを返します。鍵パラメータは
keylen で指定された鍵長に対応したものでなければなりません。

[OpenSSL::PKey::DH](../../../class/OpenSSL=3a=3aPKey=3a=3aDH.md) は DH パラメータと DH 鍵対を保持していますが、これで返されるオブジェクトはパラメータしか用いられません。

cb に nil を指定するとデフォルトのパラメータが利用されます。

デフォルト値は nil です。

- **param** `cb` -- 設定するコールバック
- **SEE** [OpenSSL::SSL::SSLContext#tmp_dh_callback](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/tmp_dh_callback.md)
