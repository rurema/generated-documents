# Net::SMTP.start

### def Net::SMTP.start(address, port = Net::SMTP.default_port, tls: false, starttls: :auto, tls_verify: true, tls_hostname: nil, ssl_context_params: nil, helo: 'localhost', user: nil, password: nil, authtype: DEFAULT_AUTH_TYPE) -> Net::SMTP
### def Net::SMTP.start(address, port = Net::SMTP.default_port, tls: false, starttls: :auto, tls_verify: true, tls_hostname: nil, ssl_context_params: nil, helo: 'localhost', user: nil, password: nil, authtype: DEFAULT_AUTH_TYPE) {|smtp| ... } -> object
### def Net::SMTP.start(address, port = Net::SMTP.default_port, helo = 'localhost', user = nil, password = nil, authtype = DEFAULT_AUTH_TYPE) -> Net::SMTP
### def Net::SMTP.start(address, port = Net::SMTP.default_port, helo = 'localhost', user = nil, password = nil, authtype = DEFAULT_AUTH_TYPE) {|smtp| .... } -> object

新しい SMTP オブジェクトを生成し、サーバに接続し、セッションを開始します。

以下と同じです。

```ruby
require 'net/smtp'
Net::SMTP.new(address, port).start(helo: helo, user: user, password: password, authtype: authtype)
```

このメソッドにブロックを与えた場合には、新しく作られた [Net::SMTP](../../../class/Net=3a=3aSMTP.md) オブジェクトを引数としてそのブロックを呼び、ブロック終了時に自動的に接続を閉じます。
ブロックを与えなかった場合には新しく作られた [Net::SMTP](../../../class/Net=3a=3aSMTP.md) オブジェクトが返されます。この場合終了時に [Net::SMTP#finish](../../../method/Net=3a=3aSMTP/i/finish.md) を呼ぶのは利用者の責任となります。

user と password の両方が与えられた場合、
SMTP AUTH コマンドによって認証を行います。
authtype は使用する認証のタイプで、シンボルで :plain, :login, :cram_md5 を指定します。

```ruby title="Example"
require 'net/smtp'

Net::SMTP.start('smtp.example.com') {|smtp|
  smtp.send_message mail_string, 'from@example.jp', 'to@example.jp'
}
```

- **param** `address` -- 接続するサーバをホスト名もしくはIPアドレスで指定します
- **param** `port` -- ポート番号、デフォルトは 25 です
- **param** `tls` -- 真を指定すると、接続した時点から TLS を使います(SMTPS)
- **param** `starttls` -- STARTTLS を使うかどうか(`:always`, `:auto`, false のいずれか)。[Net::SMTP.new](../../../method/Net=3a=3aSMTP/s/new.md) を参照してください
- **param** `tls_verify` -- サーバー証明書を検証するか否か
- **param** `tls_hostname` -- サーバー証明書のホスト名
- **param** `ssl_context_params` -- [OpenSSL::SSL::SSLContext#set_params](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/set_params.md) に渡す追加のパラメータの [Hash](../../../class/Hash.md)
- **param** `helo` -- HELO で名乗るドメイン名です
- **param** `user` -- 認証で使うアカウント名
- **param** `password` -- 認証で使うパスワード
- **param** `authtype` -- 認証の種類(:plain, :login, :cram_md5 のいずれか)

- **raise** `TimeoutError` -- 接続時にタイムアウトした場合に発生します
- **raise** `Net::SMTPUnsupportedCommand` -- TLSをサポートしていないサーバでTLSを使おうとした場合に発生します
- **raise** `Net::SMTPServerBusy` -- SMTPエラーコード420,450の場合に発生します
- **raise** `Net::SMTPSyntaxError` -- SMTPエラーコード500の場合に発生します
- **raise** `Net::SMTPFatalError` -- SMTPエラーコード5xxの場合に発生します

- **SEE** [Net::SMTP#start](../../../method/Net=3a=3aSMTP/i/start.md), [Net::SMTP.new](../../../method/Net=3a=3aSMTP/s/new.md)
