# Net::SMTP#auth_login

### def auth_login(user, secret) -> ()

LOGIN 認証を行います。

このメソッドはセッション開始([Net::SMTP#start](../../../method/Net=3a=3aSMTP/i/start.md))後、メールを送る前に呼びだしてください。

通常は [Net::SMTP.start](../../../method/Net=3a=3aSMTP/s/start.md) や [Net::SMTP#start](../../../method/Net=3a=3aSMTP/i/start.md) で認証を行うためこれを利用する必要はないはずです。

- **param** `user` -- 認証で使うアカウント名
- **param** `secret` -- 認証で使うパスワード
