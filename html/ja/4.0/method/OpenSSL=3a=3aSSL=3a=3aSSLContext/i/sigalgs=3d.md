# OpenSSL::SSL::SSLContext#sigalgs=

### def sigalgs=(sigalgs)

このコンテキストで使う「サポートする署名アルゴリズム」の一覧をコロン区切りの文字列で設定します。

TLS クライアントの場合、この一覧は ClientHello メッセージの "signature_algorithms" 拡張に使われます。TLS サーバの場合、OpenSSL が共有可能な署名アルゴリズムの集合を決定するために使われ、その中から最も適切なものを選択します。

クライアント認証における同等の設定については [OpenSSL::SSL::SSLContext#client_sigalgs=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/client_sigalgs=3d.md) を参照してください。

- **param** `sigalgs` -- コロン区切りの署名アルゴリズム名の文字列(例 `"sigalg1:sigalg2:..."`)
- **raise** `OpenSSL::SSL::SSLError` -- 設定に失敗した場合に発生します
- **SEE** [OpenSSL::SSL::SSLContext#client_sigalgs=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/client_sigalgs=3d.md)
