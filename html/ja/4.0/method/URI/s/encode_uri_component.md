# URI.encode_uri_component

### def URI.encode_uri_component(str, enc=nil) -> String

文字列 str をパーセントエンコードした文字列を返します。

[URI.encode_www_form_component](../../../method/URI/s/encode_www_form_component.md) と同様の変換を行いますが、空白文字 " " を "+" ではなく "%20" に変換する点が異なります。

- **param** `str` -- エンコードする文字列です。
- **param** `enc` -- 指定された場合、パーセントエンコーディングする前に、str をこのエンコーディングに変換します。

```ruby title="例"
require 'uri'
p URI.encode_uri_component('Ruby is fun+test') # => "Ruby%20is%20fun%2Btest"
```

- **SEE** [URI.decode_uri_component](../../../method/URI/s/decode_uri_component.md), [URI.encode_www_form_component](../../../method/URI/s/encode_www_form_component.md)
