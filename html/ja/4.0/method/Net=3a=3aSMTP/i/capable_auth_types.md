# Net::SMTP#capable_auth_types

### def capable_auth_types -> [String]

接続したサーバで利用可能な認証を配列で返します。

返り値の配列の要素は、 'PLAIN', 'LOGIN', 'CRAM-MD5' です。

このメソッドは [Net::SMTP#start](../../../method/Net=3a=3aSMTP/i/start.md) などでセッションを開始した以降にしか正しい値を返しません。
