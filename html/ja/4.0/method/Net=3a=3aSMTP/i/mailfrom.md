# Net::SMTP#mailfrom

### def mailfrom(from_addr) -> Net::SMTP::Response

MAILFROM コマンドを送ります。

通常は [Net::SMTP#send_message](../../../method/Net=3a=3aSMTP/i/send_message.md), [Net::SMTP#open_message_stream](../../../method/Net=3a=3aSMTP/i/open_message_stream.md) で
MAILFROM が送られるため利用する必要はないはずです。

- **param** `from_addr` -- 送信元メールアドレス
