# OpenSSL::SSL::SSLContext#client_sigalgs=

### def client_sigalgs=(sigalgs)

クライアント認証のために使う「サポートする署名アルゴリズム」の一覧をコロン区切りの文字列で設定します。

TLS サーバの場合、この一覧は CertificateRequest メッセージの一部としてクライアントに送信されます。

サーバ認証における同等の設定については [OpenSSL::SSL::SSLContext#sigalgs=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/sigalgs=3d.md) を参照してください。

- **param** `sigalgs` -- コロン区切りの署名アルゴリズム名の文字列(例 `"sigalg1:sigalg2:..."`)
- **raise** `OpenSSL::SSL::SSLError` -- 設定に失敗した場合に発生します
- **SEE** [OpenSSL::SSL::SSLContext#sigalgs=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/sigalgs=3d.md)
