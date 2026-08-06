# Logger#unknown

### def unknown(progname = nil){ ... } -> true
### def unknown(progname = nil) -> true

UNKNOWN 情報を出力します。

ブロックを与えなかった場合は、progname をメッセージとしてログを出力します。

ブロックを与えた場合は、ブロックを評価した結果をメッセージとしてログを出力します。

引数とブロックを同時に与えた場合は、progname をプログラム名、ブロックを評価した結果をメッセージとしてログを出力します。

- **param** `progname` -- ブロックを与えない場合は、メッセージとして文字列または例外オブジェクトを指定します。
                ブロックを与えた場合は、プログラム名を文字列として与えます。

```ruby title="例"
require 'logger'

logger = Logger.new(STDOUT)
p logger.unknown("unknown1")            # => A, [2019-03-28T00:26:42.850942 #2765]   ANY -- : unknown1
p logger.unknown("MyApp") { "unknown2" }  # => A, [2019-03-28T00:26:42.851021 #2765]   ANY -- MyApp: unknown2
```

- **SEE** [Logger#debug](../../../method/Logger/i/debug.md)
