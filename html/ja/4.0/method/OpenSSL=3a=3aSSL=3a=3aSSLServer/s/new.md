# OpenSSL::SSL::SSLServer.new

### def OpenSSL::SSL::SSLServer.new(svr, ctx) -> OpenSSL::SSL::SSLServer

[TCPServer](../../../class/TCPServer.md) オブジェクトをラップする SSLServer オブジェクトを生成します。

svr にはラップする[TCPServer](../../../class/TCPServer.md) オブジェクトを、
ctx には SSL サーバが用いる  [OpenSSL::SSL::SSLContext](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLContext.md)
オブジェクトを生成します。

[OpenSSL::SSL::SSLServer#listen](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLServer/i/listen.md) や [OpenSSL::SSL::SSLServer#accept](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLServer/i/accept.md)
は内部で svr で渡されたオブジェクトの
[TCPServer#listen](../../../method/TCPServer/i/listen.md) や [TCPServer#accept](../../../method/TCPServer/i/accept.md) を呼び出します。

- **param** `svr` -- 利用する [TCPServer](../../../class/TCPServer.md) オブジェクト
- **param** `ctx` -- SSL サーバとして用いる [OpenSSL::SSL::SSLContext](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLContext.md) オブジェクト
