# Net::SMTP#ehlo

### def ehlo(domain) -> Net::SMTP::Response

EHLO コマンドを送ります(ESMTP を使います)。

通常は [Net::SMTP.start](../../../method/Net=3a=3aSMTP/s/start.md), [Net::SMTP#start](../../../method/Net=3a=3aSMTP/i/start.md) で EHLO が送られるため利用する必要はないはずです。

- **param** `domain` -- EHLOで送るドメイン名
