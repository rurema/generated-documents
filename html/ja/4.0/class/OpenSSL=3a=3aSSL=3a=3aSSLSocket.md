# class OpenSSL::SSL::SSLSocket < Object

ソケットをラップして SSL での認証と暗号通信を実現するためのクラスです。

### 例

SSL/TLS サーバに接続して write します。

```ruby
require 'socket'
require 'openssl'
include OpenSSL
  
ctx = SSL::SSLContext.new
ctx.set_params(verify_mode: OpenSSL::SSL::VERIFY_PEER, verify_hostname: true)
  
soc = TCPSocket.new('www.example.com', 443)
ssl = SSL::SSLSocket.new(soc, ctx)
ssl.hostname = 'www.example.com' # SNI
ssl.connect
ssl.post_connection_check('www.example.com')
raise "verification error" if ssl.verify_result != OpenSSL::X509::V_OK
print ssl.peer_cert.to_text
  
# HTTP リクエストを送信
ssl.write("GET / HTTP/1.1\r\n")
ssl.write("Host: www.example.com\r\n")
ssl.write("Connection: close\r\n")
ssl.write("\r\n")
print ssl.read
  
ssl.close
soc.close
```

## Class Methods

- [new](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/s/new.md)

## Instance Methods

- [accept](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/accept.md)
- [accept_nonblock](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/accept_nonblock.md)
- [alpn_protocol](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/alpn_protocol.md)
- [cert](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/cert.md)
- [cipher](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/cipher.md)
- [client_ca](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/client_ca.md)
- [close_read](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/close_read.md)
- [close_write](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/close_write.md)
- [connect](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/connect.md)
- [connect_nonblock](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/connect_nonblock.md)
- [context](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/context.md)
- [export_keying_material](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/export_keying_material.md)
- [finished_message](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/finished_message.md)
- [hostname](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/hostname.md)
- [hostname=](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/hostname=3d.md)
- [io](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/io.md)
- [to_io](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/to_io.md)
- [npn_protocol](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/npn_protocol.md)
- [peer_cert](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/peer_cert.md)
- [peer_cert_chain](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/peer_cert_chain.md)
- [peer_finished_message](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/peer_finished_message.md)
- [pending](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/pending.md)
- [post_connection_check](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/post_connection_check.md)
- [session](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/session.md)
- [session=](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/session=3d.md)
- [session_reused?](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/session_reused=3f.md)
- [ssl_version](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/ssl_version.md)
- [state](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/state.md)
- [sync_close](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/sync_close.md)
- [sync_close=](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/sync_close=3d.md)
- [sysclose](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/sysclose.md)
- [sysread](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/sysread.md)
- [syswrite](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/syswrite.md)
- [tmp_key](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/tmp_key.md)
- [verify_result](../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/verify_result.md)
