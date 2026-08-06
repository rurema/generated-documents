# URI.encode_www_form_component

### def URI.encode_www_form_component(str, enc=nil) -> String

文字列を URL-encoded form data の1コンポーネントとしてエンコードした文字列を返します。

通常は [URI.encode_www_form](../../../method/URI/s/encode_www_form.md) を使うほうがよいでしょう。

このメソッドでは *, -, ., 0-9, A-Z, _, a-z, は変換せず、空白は + に変換し、その他は %XX に、変換します。

このメソッドは
<https://www.w3.org/TR/2013/CR-html5-20130806/forms.html#url-encoded-form-data>
にもとづいて実装されています。

```ruby
require 'uri'
p URI.encode_www_form_component('Ruby リファレンスマニュアル')
# => "Ruby+%E3%83%AA%E3%83%95%E3%82%A1%E3%83%AC%E3%83%B3%E3%82%B9%E3%83%9E%E3%83%8B%E3%83%A5%E3%82%A2%E3%83%AB"
```

- **param** `str` -- エンコードする文字列
- **param** `enc` -- 指定された場合、パーセントエンコーディングする前に、strをこのエンコーディングに変換
- **SEE** [URI.decode_www_form_component](../../../method/URI/s/decode_www_form_component.md), [URI.encode_www_form](../../../method/URI/s/encode_www_form.md)
