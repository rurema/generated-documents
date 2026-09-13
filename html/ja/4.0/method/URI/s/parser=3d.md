# URI.parser=

### def URI.parser=(parser = URI::RFC3986_PARSER)

`self` が使うデフォルトのパーサを設定します。

このメソッドを呼び出すと、[URI.parse](../../../method/URI/s/parse.md) や [URI.split](../../../method/URI/s/split.md) などが使うパーサ(`URI::RFC3986_Parser` または `URI::RFC2396_Parser` のインスタンス)が切り替わります。同時に `URI::PARSER`・`URI::Parser` や、パーサが提供する正規表現に対応する定数群も、指定したパーサのものに更新されます。

- **param** `parser` -- 設定するパーサを、`URI::RFC3986_Parser` または `URI::RFC2396_Parser` のインスタンスで指定します。省略した場合は `URI::RFC3986_PARSER` を設定します。

```ruby title="例"
require 'uri'
URI.parser = URI::RFC2396_PARSER
p URI::PARSER.class      # => URI::RFC2396_Parser
URI.parser = URI::RFC3986_PARSER
p URI::PARSER.class      # => URI::RFC3986_Parser
```
