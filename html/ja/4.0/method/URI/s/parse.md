# URI.parse

### def URI.parse(uri_str)    -> object

与えられた URI から該当する [URI::Generic](../../../class/URI=3a=3aGeneric.md) のサブクラスのインスタンスを生成して返します。scheme が指定されていない場合は、[URI::Generic](../../../class/URI=3a=3aGeneric.md) オブジェクトを返します。

- **param** `uri_str` -- パースしたい URI を文字列として与えます。

- **raise** `URI::InvalidComponentError` -- 各要素が適合しない場合に発生します。

- **raise** `URI::InvalidURIError` -- パースに失敗した場合に発生します。

```ruby title="例"
require 'uri'
p uri = URI.parse("http://www.ruby-lang.org/")

# => #<URI::HTTP:0x201002a6 URL:http://www.ruby-lang.org/>
p uri.scheme    # => "http"
p uri.host      # => "www.ruby-lang.org"
p uri.port      # => 80
p uri.path      # => "/"
```
