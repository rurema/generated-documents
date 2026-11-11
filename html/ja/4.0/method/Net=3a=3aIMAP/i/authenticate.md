# Net::IMAP#authenticate

### def authenticate(mechanism, *creds, sasl_ir: true, **props) -> Net::IMAP::TaggedResponse

AUTHENTICATE コマンドを送り、クライアントを認証します。

`mechanism` で利用する SASL の認証方式を文字列で指定します。
残りの引数とブロックはその認証方式の実装にそのまま渡されます。
渡す認証情報(ユーザ名、パスワード、アクセストークンなど)は認証方式ごとに異なります。

```ruby title="例"
imap.authenticate('PLAIN', user, password)

```

`mechanism` としては以下がサポートされています。
  - "ANONYMOUS"
  - "EXTERNAL"
  - "OAUTHBEARER"
  - "PLAIN"
  - "SCRAM-SHA-1"
  - "SCRAM-SHA-256"
  - "XOAUTH2"
  - "LOGIN"(非推奨)
  - "CRAM-MD5"(非推奨)
  - "DIGEST-MD5"(非推奨)

非推奨の認証方式は互換性のために残されているもので、使うと警告を出します。
`"LOGIN"` の代わりには `"PLAIN"` を使います。
`"XOAUTH2"` は非標準で `"OAUTHBEARER"` に置き換えられたものですが、広く使われています。

サーバが SASL-IR 拡張([RFC:4959])と指定した認証方式に対応していて、認証方式がクライアントから先に応答するものであれば、`sasl_ir` が真のときは最初の応答を AUTHENTICATE コマンドの引数として送り、往復を 1 回省きます。

`sasl_ir` の既定値は接続の設定 [Net::IMAP::Config#sasl_ir](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/sasl_ir.md) の値で、その既定値は true です。

- **param** `mechanism` -- 認証方式を表す文字列
- **param** `creds` -- 認証方式の実装に渡す認証情報。認証方式ごとに異なります
- **param** `sasl_ir` -- 偽を指定すると最初の応答を AUTHENTICATE コマンドの引数として送りません
- **param** `props` -- 認証方式の実装に渡すキーワード引数。認証方式ごとに異なります
- **SEE** [Net::IMAP#login](../../../method/Net=3a=3aIMAP/i/login.md)
