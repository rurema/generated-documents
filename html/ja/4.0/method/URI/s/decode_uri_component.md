# URI.decode_uri_component

### def URI.decode_uri_component(str, enc=Encoding::UTF_8) -> String

パーセントエンコードされた文字列 str をデコードした文字列を返します。

[URI.decode_www_form_component](../../../method/URI/s/decode_www_form_component.md) と同様の変換を行いますが、"+" という文字はデコードせずそのまま残す点が異なります。

enc で指定したエンコーディングの文字列がパーセントエンコードされたものとみなし、返り値にそのエンコーディングを付加します。

- **param** `str` -- デコード対象の文字列です。
- **param** `enc` -- 変換先のエンコーディングです。
- **raise** `ArgumentError` -- str のパーセントエンコーディングの書式が不正である場合に発生します。

```ruby title="例"
require 'uri'
p URI.decode_uri_component('a+b%20c') # => "a+b c"
```

- **SEE** [URI.encode_uri_component](../../../method/URI/s/encode_uri_component.md), [URI.decode_www_form_component](../../../method/URI/s/decode_www_form_component.md)
