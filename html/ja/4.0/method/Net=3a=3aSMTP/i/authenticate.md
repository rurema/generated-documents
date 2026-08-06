# Net::SMTP#authenticate

### def authenticate(user, secret, authtype) -> ()

認証を行います。

このメソッドはセッション開始([Net::SMTP#start](../../../method/Net=3a=3aSMTP/i/start.md))後、メールを送る前に呼びだしてください。

通常は [Net::SMTP.start](../../../method/Net=3a=3aSMTP/s/start.md) や [Net::SMTP#start](../../../method/Net=3a=3aSMTP/i/start.md) で認証を行うためこれを利用する必要はないはずです。

- **param** `user` -- 認証で使うアカウント名
- **param** `secret` -- 認証で使うパスワード
- **param** `authtype` -- 認証の種類(:plain, :login, :cram_md5 のいずれか)

- **SEE** [Net::SMTP.start](../../../method/Net=3a=3aSMTP/s/start.md), [Net::SMTP#start](../../../method/Net=3a=3aSMTP/i/start.md), [Net::SMTP#auth_plain](../../../method/Net=3a=3aSMTP/i/auth_plain.md), [Net::SMTP#auth_login](../../../method/Net=3a=3aSMTP/i/auth_login.md), [Net::SMTP#auth_cram_md5](../../../method/Net=3a=3aSMTP/i/auth_cram_md5.md)
