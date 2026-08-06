# class OpenSSL::SSL::SSLServer < Object

SSL サーバーのためのクラス。

[TCPServer](../class/TCPServer.md) をラップするクラスで、TCPServer で接続したソケットを [OpenSSL::SSL::SSLSocket](../class/OpenSSL=3a=3aSSL=3a=3aSSLSocket.md) でラップする機能を持ちます。
おおよそ TCPServer と同様のメソッドを持ちます。

基本的には SSL サーバを簡単に実装するためのクラスであり、これを利用せずとも SSL サーバを実装することは可能です。

以下はクライアントからの入力を標準出力に出力するだけのサーバです。

```ruby
require 'socket'
require 'openssl'
  
include OpenSSL
  
ctx = SSL::SSLContext.new()
ctx.cert = X509::Certificate.new(File.read('cert.pem'))
ctx.key = PKey::RSA.new(File.read('privkey.pem'))
svr = TCPServer.new(2007)
serv = SSL::SSLServer.new(svr, ctx)
  
loop do
  while soc = serv.accept
    puts soc.read
  end
end
```

## Class Methods

- [new](../method/OpenSSL=3a=3aSSL=3a=3aSSLServer/s/new.md)

## Instance Methods

- [accept](../method/OpenSSL=3a=3aSSL=3a=3aSSLServer/i/accept.md)
- [close](../method/OpenSSL=3a=3aSSL=3a=3aSSLServer/i/close.md)
- [listen](../method/OpenSSL=3a=3aSSL=3a=3aSSLServer/i/listen.md)
- [shutdown](../method/OpenSSL=3a=3aSSL=3a=3aSSLServer/i/shutdown.md)
- [start_immediately](../method/OpenSSL=3a=3aSSL=3a=3aSSLServer/i/start_immediately.md)
- [start_immediately=](../method/OpenSSL=3a=3aSSL=3a=3aSSLServer/i/start_immediately=3d.md)
- [to_io](../method/OpenSSL=3a=3aSSL=3a=3aSSLServer/i/to_io.md)
