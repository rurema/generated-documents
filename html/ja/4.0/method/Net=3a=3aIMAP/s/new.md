# Net::IMAP.new

### def Net::IMAP.new(host, port: nil, ssl: nil, response_handlers: nil, config: Net::IMAP::Config.global, **config_options) -> Net::IMAP

新たな Net::IMAP オブジェクトを生成し、指定したホストの指定したポートに接続し、接続後の IMAP オブジェクトを返します。

`ssl` に真を渡すと、サーバに繋ぐのに SSL/TLS を用います。
`ssl` がハッシュならば、それを [OpenSSL::SSL::SSLContext#set_params](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/set_params.md) に渡して SSL/TLS のパラメータを設定します。
ハッシュでない真の値(true など)ならば、空のハッシュを渡したのと同じで、[OpenSSL::SSL::SSLContext#set_params](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/set_params.md) の既定のパラメータを使います。
ハッシュへの変換は [Hash.try_convert](../../../method/Hash/s/try_convert.md) で行うので、`to_hash` を持つオブジェクトもハッシュとして扱います。
SSL/TLS での接続には OpenSSL と [openssl](../../../library/openssl.md) が使える必要があります。
`port` を省略すると、SSL/TLS を使うときは 993、使わないときは 143 に接続します。

`response_handlers` には受信スレッドを開始する前に追加する応答ハンドラのリストを指定します。
こうすると最初の応答([Net::IMAP#greeting](../../../method/Net=3a=3aIMAP/i/greeting.md))も含めて、サーバからのすべての応答がハンドラで処理されます。

`config` には接続の設定([Net::IMAP::Config](../../../class/Net=3a=3aIMAP=3a=3aConfig.md) オブジェクト)を指定します。
設定のほかに、版の数値(`0.4` など)や名前(`:current` など)やハッシュも [Net::IMAP::Config.[]](../../../method/Net=3a=3aIMAP=3a=3aConfig/s/=5b=5d.md) と同じように指定できます。
これは接続ごとに作られる設定([Net::IMAP#config](../../../method/Net=3a=3aIMAP/i/config.md))を直接置き換えるのではなく、その継承元になります。
省略時は全体の設定 [Net::IMAP::Config.global](../../../method/Net=3a=3aIMAP=3a=3aConfig/s/global.md) が継承元になります。
残りのキーワード引数 `config_options` は [Net::IMAP::Config.new](../../../method/Net=3a=3aIMAP=3a=3aConfig/s/new.md) に渡され、接続ごとの設定の初期値になります。
たとえば `open_timeout`(接続が確立するまで待つ秒数。既定値は 30)や `idle_response_timeout`(IDLE の応答を待つ秒数。既定値は 5)を指定できます。

互換性のため、`Net::IMAP.new(host, port)` と `Net::IMAP.new(host, options)`(`options` はハッシュ)の形も受け付けます。
それぞれ `port` を `port:` のキーワード引数に、`options` をキーワード引数に変換し、警告は出ません。
`Net::IMAP.new(host, port, usessl, certs, verify)` の形は非推奨で、警告を出します。
`usessl` が偽ならば `certs` と `verify` は無視され、SSL/TLS を使いません。
`usessl` が真ならば `certs` と `verify` を `ssl` のハッシュに変換します。
`certs` がファイルならば `ca_file` に、ディレクトリならば `ca_path` に変換し、`verify` が真ならば `verify_mode` に [OpenSSL::SSL::VERIFY_PEER](../../../method/OpenSSL=3a=3aSSL/c/VERIFY_PEER.md) を、偽ならば [OpenSSL::SSL::VERIFY_NONE](../../../method/OpenSSL=3a=3aSSL/c/VERIFY_NONE.md) を設定します。

```ruby title="例"
require 'net/imap'

imap = Net::IMAP.new('imap.example.com', port: 993,
                     ssl: { verify_mode: OpenSSL::SSL::VERIFY_PEER,
                            timeout: 600 })
```

この警告は `Warning[:deprecated]` が真のとき(`-W:deprecated` を指定したときなど)だけ表示されます。

- **param** `host` -- 接続するホスト名の文字列
- **param** `port` -- 接続するポート番号
- **param** `ssl` -- 真で SSL/TLS を使う。ハッシュなら [OpenSSL::SSL::SSLContext#set_params](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/set_params.md) に渡すパラメータ(ハッシュでない真の値は既定のパラメータ)
- **param** `response_handlers` -- 受信スレッドを開始する前に追加する応答ハンドラのリスト
- **param** `config` -- 接続ごとの設定の継承元とする [Net::IMAP::Config](../../../class/Net=3a=3aIMAP=3a=3aConfig.md) オブジェクト。版の数値や名前やハッシュも指定できます
- **param** `config_options` -- 接続ごとの設定の初期値(`open_timeout` など)
- **raise** `ArgumentError` -- 互換のための形の引数とキーワード引数を同時に渡した場合や、`options` のハッシュと `usessl` などを同時に渡した場合に発生します
