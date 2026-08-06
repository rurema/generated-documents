# OpenSSL::SSL::SSLSocket.new

### def OpenSSL::SSL::SSLSocket.new(socket) -> OpenSSL::SSL::SSLSocket
### def OpenSSL::SSL::SSLSocket.new(socket, context) -> OpenSSL::SSL::SSLSocket

socket をラップして SSLSocket オブジェクトを生成します。

socket には ラップする [TCPSocket](../../../class/TCPSocket.md) オブジェクトを与え、
context には SSL の設定情報を所持している
[OpenSSL::SSL::SSLContext](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLContext.md) オブジェクトを与えます。

context を省略した場合は [OpenSSL::SSL::SSLContext.new](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/s/new.md) で新たにコンテキストを生成してそれを用います。

- **param** `socket` -- ラップするソケット
- **param** `context` -- SSL の設定情報を持つ SSL コンテキストオブジェクト
- **raise** `OpenSSL::SSL::SSLError` -- オブジェクトの生成に失敗した場合に発生します
