# OpenSSL::SSL::SSLSocket#accept

### def accept -> self

TLS/SSL 通信をサーバモードとして開始し、クライアントからのハンドシェイク開始を待ち、クライアントとのハンドシェイクを実行します。

- **raise** `OpenSSL::SSL::SSLError` -- ハンドシェイクに失敗した(VERIFY_PEER で
       証明書の検証に失敗した場合や、プロトコル合意に失敗したなど)
       場合に発生します
- **SEE** [OpenSSL::SSL::SSLSocket#connect](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/connect.md),
     [OpenSSL::SSL::SSLSocket#accept_nonblock](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/accept_nonblock.md)
