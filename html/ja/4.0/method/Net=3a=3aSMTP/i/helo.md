# Net::SMTP#helo

### def helo(domain) -> Net::SMTP::Response

HELO コマンドを送ります(標準的な SMTP を使います)。

通常は [Net::SMTP.start](../../../method/Net=3a=3aSMTP/s/start.md), [Net::SMTP#start](../../../method/Net=3a=3aSMTP/i/start.md) で HELO が送られるため利用する必要はないはずです。

- **param** `domain` -- HELOで送るドメイン名
