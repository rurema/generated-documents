# OpenSSL::SSL::SSLContext#tmp_dh=

### def tmp_dh=(pkey)

一時的 DH 鍵交換で使う DH パラメータを設定します。サーバ側でのみ意味を持ちます。

`pkey` には [OpenSSL::PKey::DH](../../../class/OpenSSL=3a=3aPKey=3a=3aDH.md) のインスタンスを指定します。このオブジェクトが保持している鍵の成分があっても無視され、サーバはハンドシェイクのたびに新しい鍵ペアを生成します。

[OpenSSL::SSL::SSLContext#tmp_dh_callback=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/tmp_dh_callback=3d.md) よりもこちらの利用が推奨されます。

```ruby invalid
ctx = OpenSSL::SSL::SSLContext.new
ctx.tmp_dh = OpenSSL::PKey::DH.generate(2048)
svr = OpenSSL::SSL::SSLServer.new(tcp_svr, ctx)
Thread.new { svr.accept }
```

- **param** `pkey` -- 一時的 DH 鍵交換で使う DH パラメータ([OpenSSL::PKey::DH](../../../class/OpenSSL=3a=3aPKey=3a=3aDH.md) のインスタンス)
- **raise** `OpenSSL::SSL::SSLError` -- `pkey` が DH 鍵でない場合や、設定に失敗した場合に発生します
- **SEE** [OpenSSL::SSL::SSLContext#tmp_dh_callback=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/tmp_dh_callback=3d.md)
