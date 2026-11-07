# Net::IMAP#starttls

### def starttls(**options) -> Net::IMAP::TaggedResponse

STARTTLS コマンドを送って TLS のセッションを開始します。

キーワード引数 `options` は [OpenSSL::SSL::SSLContext#set_params](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/set_params.md) にそのまま渡されます。
キーは [OpenSSL::SSL::SSLContext](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLContext.md) の属性の代入メソッドの名前です。
TLS の交渉とホスト名の検証が両方成功してから返ります。

サーバが TLS の開始に同意した後、接続の設定 `open_timeout`(`Net::IMAP::Config#open_timeout`)の秒数まで待ち、それを超えると [Net::OpenTimeout](../../../class/Net=3a=3aOpenTimeout.md) が発生します。

互換性のため、`starttls(options)`(`options` はハッシュ)と `starttls(certs, verify)` の形も受け付けます。
`starttls(options)` はハッシュをキーワード引数に変換します。
`starttls(certs, verify)` の形は非推奨で、警告を出します。
`certs` と `verify` は [Net::IMAP.new](../../../method/Net=3a=3aIMAP/s/new.md) の `certs` と `verify` と同じように変換します。
この警告は `Warning[:deprecated]` が真のとき(`-W:deprecated` を指定したときなど)だけ表示されます。

- **param** `options` -- [OpenSSL::SSL::SSLContext#set_params](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/set_params.md) に渡す SSL/TLS のパラメータ
- **raise** `ArgumentError` -- 互換のための形の引数とキーワード引数を同時に渡した場合や、`options` のハッシュと `verify` を同時に渡した場合に発生します
