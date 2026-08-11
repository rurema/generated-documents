# OpenSSL::SSL::SSLSocket#accept_nonblock

### def accept_nonblock -> self

ノンブロッキング方式で
TLS/SSL 通信をサーバモードとして開始し、クライアントとのハンドシェイクを実行します。

IO が読み込み待ち、もしくは書き込み待ちになった場合は例外を発生させ、ハンドシェイクを中断します。IO が読み込み/書き込み可能状態になってからこのメソッドをもう一度呼ぶとハンドシェイクを再開します。

- **raise** `OpenSSL::SSL::SSLError` -- ハンドシェイクに失敗した(VERIFY_PEER で証明書の検証に失敗した場合や、プロトコル合意に失敗したなど)
       場合に発生します
       (実際は [OpenSSL::SSL::SSLError](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLError.md) をこのモジュールで extend した例外オブジェクトが生成されます)
- **raise** `OpenSSL::SSL::SSLError` -- ソケットが読み込み/書き込み可能状態になるのを待つ必要がある場合に発生します。
       読み込み可能状態を待つ必要がある場合には [IO::WaitReadable](../../../class/IO=3a=3aWaitReadable.md) を、書き込み可能状態を待つ必要がある場合には [IO::WaitWritable](../../../class/IO=3a=3aWaitWritable.md) を、それぞれ extend した例外オブジェクトが生成されます。
- **SEE** [OpenSSL::SSL::SSLSocket#connect_nonblock](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/connect_nonblock.md),
     [OpenSSL::SSL::SSLSocket#accept](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/accept.md)
