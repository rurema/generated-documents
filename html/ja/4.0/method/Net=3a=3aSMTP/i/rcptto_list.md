# Net::SMTP#rcptto_list

### def rcptto_list(to_addrs){ ... } -> object

RCPTTO コマンドを to_addrs のすべてのメールアドレスに対して送ります。

コマンドを送った後、ブロックを呼び出します。
このメソッドの返り値はブロックの返り値になります。

通常は [Net::SMTP#send_message](../../../method/Net=3a=3aSMTP/i/send_message.md), [Net::SMTP#open_message_stream](../../../method/Net=3a=3aSMTP/i/open_message_stream.md) で
RCPTTO が送られるため利用する必要はないはずです。

- **param** `to_addrs` -- 送信先メールアドレスの配列
