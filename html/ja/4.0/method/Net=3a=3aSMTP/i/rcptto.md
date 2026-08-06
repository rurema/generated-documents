# Net::SMTP#rcptto

### def rcptto(to_addr) -> Net::SMTP::Response

RCPTTO コマンドを送ります。

通常は [Net::SMTP#send_message](../../../method/Net=3a=3aSMTP/i/send_message.md), [Net::SMTP#open_message_stream](../../../method/Net=3a=3aSMTP/i/open_message_stream.md) で
RCPTTO が送られるため利用する必要はないはずです。

- **param** `to_addr` -- 送信先メールアドレス
