# Net::SMTP#data

### def data(message) -> Net::SMTP::Response
### def data {|f| .... } -> Net::SMTP::Response

DATA コマンドを送ります。

文字列を引数に与えた場合はそれを本文として送ります。
ブロックを与えた場合にはそのブロックにストリームオブジェクトが渡されます
([Net::SMTP#open_message_stream](../../../method/Net=3a=3aSMTP/i/open_message_stream.md)参考)。

通常は [Net::SMTP#send_message](../../../method/Net=3a=3aSMTP/i/send_message.md), [Net::SMTP#open_message_stream](../../../method/Net=3a=3aSMTP/i/open_message_stream.md) で
DATA が送られるため利用する必要はないはずです。

- **param** `message` -- メールの本文
