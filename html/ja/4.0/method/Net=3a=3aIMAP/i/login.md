# Net::IMAP#login

### def login(user, password) -> Net::IMAP::TaggedResponse

LOGIN コマンドを送り、平文でパスワードを送りクライアントユーザを認証します。

[Net::IMAP#authenticate](../../../method/Net=3a=3aIMAP/i/authenticate.md) で "LOGIN" を使うのとは異なることに注意してください。authenticate では AUTHENTICATE コマンドを送ります。

認証成功時には認証成功レスポンスを返り値として返します。

認証失敗時には例外が発生します。

- **param** `user` -- ユーザ名文字列
- **param** `password` -- パスワード文字列
- **raise** `Net::IMAP::NoResponseError` -- 認証に失敗した場合に発生します
- **SEE** [Net::IMAP#authenticate](../../../method/Net=3a=3aIMAP/i/authenticate.md)
