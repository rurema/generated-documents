# Net::SMTP.new

### def Net::SMTP.new(address, port = Net::SMTP.default_port) -> Net::SMTP

新しい SMTP オブジェクトを生成します。
address はSMTPサーバーのFQDNで、
port は接続するポート番号です。
ただし、このメソッドではまだTCPの接続はしません。
[Net::SMTP#start](../../../method/Net=3a=3aSMTP/i/start.md) で接続します。

オブジェクトの生成と接続を同時にしたい場合には
[Net::SMTP.start](../../../method/Net=3a=3aSMTP/s/start.md) を代わりに使ってください。

- **param** `address` -- 接続先のSMTPサーバの文字列
- **param** `port` -- 接続ポート番号

- **SEE** [Net::SMTP.start](../../../method/Net=3a=3aSMTP/s/start.md), [Net::SMTP#start](../../../method/Net=3a=3aSMTP/i/start.md)
