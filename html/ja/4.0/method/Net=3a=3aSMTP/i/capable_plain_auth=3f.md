# Net::SMTP#capable_plain_auth?

### def capable_plain_auth? -> bool

サーバが AUTH PLAIN を広告してきた場合に真を返します。

このメソッドは [Net::SMTP#start](../../../method/Net=3a=3aSMTP/i/start.md) などでセッションを開始した以降にしか正しい値を返しません。
