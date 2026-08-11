# OpenSSL::SSL::SSLSocket#connect

### def connect -> self

TLS/SSl 通信をクライアントモードとして開始し、サーバとのハンドシェイクを実行します。

- **raise** `OpenSSL::SSL::SSLError` -- ハンドシェイクに失敗した(VERIFY_PEER で証明書の検証に失敗した場合や、プロトコル合意に失敗したなど)
       場合に発生します
- **SEE** [OpenSSL::SSL::SSLSocket#accept](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/accept.md),
     [OpenSSL::SSL::SSLSocket#connect_nonblock](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/connect_nonblock.md)
