# Net::HTTP.default_configuration=

### def Net::HTTP.default_configuration -> {Symbol => object} | nil
### def Net::HTTP.default_configuration=(configuration)

[Net::HTTP.new](../../../method/Net=3a=3aHTTP/s/new.md) でインスタンスを生成する際に使われるデフォルトの設定を取得・設定します。

デフォルトは nil で、この場合 [Net::HTTP.new](../../../method/Net=3a=3aHTTP/s/new.md) は組み込みのデフォルト値 (keep_alive_timeout は 2、open_timeout・read_timeout・write_timeout は 60 など) を使います。configuration に指定したハッシュのキーに対応する設定は、以後生成されるすべてのインスタンスのデフォルト値として使われます。

指定できるキーと値は以下のとおりです。それぞれ対応するメソッドで設定するのと同じ値を指定します。

- `keep_alive_timeout` -- コネクションの再利用 (keep-alive) を許可する秒数 ([Net::HTTP#keep_alive_timeout=](../../../method/Net=3a=3aHTTP/i/keep_alive_timeout=3d.md))
- `close_on_empty_response` -- レスポンスがボディを持っていない場合にコネクションを閉じるかどうかの真偽値 ([Net::HTTP#close_on_empty_response=](../../../method/Net=3a=3aHTTP/i/close_on_empty_response=3d.md))
- `open_timeout` -- 接続時に待つ最大秒数 ([Net::HTTP#open_timeout=](../../../method/Net=3a=3aHTTP/i/open_timeout=3d.md))
- `read_timeout` -- 読み込み一回でブロックしてよい最大秒数、または nil ([Net::HTTP#read_timeout=](../../../method/Net=3a=3aHTTP/i/read_timeout=3d.md))
- `write_timeout` -- 書き込み一回でブロックしてよい最大秒数、または nil ([Net::HTTP#write_timeout=](../../../method/Net=3a=3aHTTP/i/write_timeout=3d.md))
- `continue_timeout` -- 「100 Continue」レスポンスを待つ秒数、または nil ([Net::HTTP#continue_timeout=](../../../method/Net=3a=3aHTTP/i/continue_timeout=3d.md))
- `max_retries` -- 冪等なリクエストが失敗した場合に再試行する最大回数 ([Net::HTTP#max_retries=](../../../method/Net=3a=3aHTTP/i/max_retries=3d.md))
- `debug_output` -- デバッグ出力の出力先となる IO オブジェクト、または nil ([Net::HTTP#set_debug_output](../../../method/Net=3a=3aHTTP/i/set_debug_output.md))
- `response_body_encoding` -- レスポンスボディに使うエンコーディング ([Encoding](../../../class/Encoding.md) オブジェクトかその名前の文字列)、または false ([Net::HTTP#response_body_encoding=](../../../method/Net=3a=3aHTTP/i/response_body_encoding=3d.md))
- `ignore_eof` -- レスポンスボディの読み込み時に EOF を無視するかどうかの真偽値 ([Net::HTTP#ignore_eof=](../../../method/Net=3a=3aHTTP/i/ignore_eof=3d.md))

上記以外のキーは無視されます。[Net::HTTP#verify_mode=](../../../method/Net=3a=3aHTTP/i/verify_mode=3d.md) や [Net::HTTP#verify_hostname=](../../../method/Net=3a=3aHTTP/i/verify_hostname=3d.md) などの SSL/TLS に関する設定はここでは指定できません。

- **param** `configuration` -- デフォルトの設定を `{Symbol => object}` の形のハッシュで指定します。
- **return** -- 現在設定されているデフォルトの設定を返します。設定されていなければ nil を返します。

```ruby title="例"
require 'net/http'

Net::HTTP.default_configuration = {
  read_timeout: 1,
  write_timeout: 1
}
http = Net::HTTP.new('www.example.com')
http.open_timeout   # => 60
http.read_timeout   # => 1
http.write_timeout  # => 1
```

- **SEE** [Net::HTTP.new](../../../method/Net=3a=3aHTTP/s/new.md), [Net::HTTP#open_timeout](../../../method/Net=3a=3aHTTP/i/open_timeout.md), [Net::HTTP#read_timeout](../../../method/Net=3a=3aHTTP/i/read_timeout.md), [Net::HTTP#write_timeout](../../../method/Net=3a=3aHTTP/i/write_timeout.md)
