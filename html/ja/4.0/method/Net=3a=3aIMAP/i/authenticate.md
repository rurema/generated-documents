# Net::IMAP#authenticate

### def authenticate(auth_type, user, password) -> Net::IMAP::TaggedResponse

AUTHENTICATE コマンドを送り、クライアントを認証します。

auth_type で利用する認証方式を文字列で指定します。

```ruby title="例"
imap.authenticate('LOGIN', user, password)
```

auth_type としては以下がサポートされています。
  - "LOGIN"
  - "PLAIN"
  - "CRAM-MD5"
  - "DIGEST-MD5"

- **param** `auth_type` -- 認証方式を表す文字列
- **param** `user` -- ユーザ名文字列
- **param** `password` -- パスワード文字列
- **SEE** [Net::IMAP#login](../../../method/Net=3a=3aIMAP/i/login.md)
