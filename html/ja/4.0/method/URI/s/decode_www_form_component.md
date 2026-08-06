# URI.decode_www_form_component

### def URI.decode_www_form_component(str, enc=Encoding::UTF_8) -> String

URL-encoded form data の文字列の各コンポーネントをデコードした文字列を返します。

通常は [URI.decode_www_form](../../../method/URI/s/decode_www_form.md) を使うほうがよいでしょう。

"+" という文字は空白文字にデコードします。

enc で指定したエンコーディングの文字列が URL エンコードされたものとみなし、エンコーディングを付加します。

このメソッドは
<https://www.w3.org/TR/html5/sec-forms.html#urlencoded-form-data>
にもとづいて実装されています。


```ruby
require 'uri'
enc = URI.encode_www_form_component('Ruby リファレンスマニュアル')
# => "Ruby+%E3%83%AA%E3%83%95%E3%82%A1%E3%83%AC%E3%83%B3%E3%82%B9%E3%83%9E%E3%83%8B%E3%83%A5%E3%82%A2%E3%83%AB"
p URI.decode_www_form_component(enc)
# => "Ruby リファレンスマニュアル"
```

- **param** `str` -- デコード対象の文字列
- **param** `enc` -- エンコーディング
- **raise** `ArgumentError` -- str のフォーマットが不正である場合に発生します
- **SEE** [URI.encode_www_form_component](../../../method/URI/s/encode_www_form_component.md), [URI.decode_www_form](../../../method/URI/s/decode_www_form.md)
