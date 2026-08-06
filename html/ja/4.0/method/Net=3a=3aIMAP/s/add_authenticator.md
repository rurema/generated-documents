# Net::IMAP.add_authenticator

### def Net::IMAP.add_authenticator(auth_type, authenticator) -> ()

[Net::IMAP#authenticate](../../../method/Net=3a=3aIMAP/i/authenticate.md) で使う 
認証用クラスを設定します。

imap ライブラリに新たな認証方式を追加するために用います。

通常は使う必要はないでしょう。もしこれを用いて認証方式を追加する場合は net/imap.rb の
Net::IMAP::LoginAuthenticator などを参考にしてください。

- **param** `auth_type` -- 認証の種類(文字列)
- **param** `authenticator` -- 認証クラス(Class オブジェクト)
