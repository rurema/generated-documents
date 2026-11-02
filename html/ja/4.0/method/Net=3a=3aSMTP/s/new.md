# Net::SMTP.new

### def Net::SMTP.new(address, port = Net::SMTP.default_port, tls: false, starttls: :auto, tls_verify: true, tls_hostname: nil, ssl_context_params: nil) -> Net::SMTP

新しい SMTP オブジェクトを生成します。
address はSMTPサーバーのFQDNで、
port は接続するポート番号です。
ただし、このメソッドではまだTCPの接続はしません。
[Net::SMTP#start](../../../method/Net=3a=3aSMTP/i/start.md) で接続します。

オブジェクトの生成と接続を同時にしたい場合には
[Net::SMTP.start](../../../method/Net=3a=3aSMTP/s/start.md) を代わりに使ってください。

- **param** `address` -- 接続先のSMTPサーバの文字列
- **param** `port` -- 接続ポート番号
- **param** `tls` -- 真を指定すると、接続した時点から TLS を使います(SMTPS)。デフォルトは false です
- **param** `starttls` -- STARTTLS を使うかどうかを指定します。`:always` なら常に使い、`:auto` ならサーバが STARTTLS をサポートしている場合に使い、false なら使いません。デフォルトは `:auto` です
- **param** `tls_verify` -- 真を指定すると、サーバー証明書を検証します。デフォルトは true です
- **param** `tls_hostname` -- サーバー証明書の検証と SNI に使うホスト名を指定します。nil なら `address` を使います
- **param** `ssl_context_params` -- [OpenSSL::SSL::SSLContext#set_params](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/set_params.md) に渡す追加のパラメータを [Hash](../../../class/Hash.md) で指定します。`:verify_mode` を含む場合は `tls_verify` よりそちらが優先されます

- **SEE** [Net::SMTP.start](../../../method/Net=3a=3aSMTP/s/start.md), [Net::SMTP#start](../../../method/Net=3a=3aSMTP/i/start.md)
