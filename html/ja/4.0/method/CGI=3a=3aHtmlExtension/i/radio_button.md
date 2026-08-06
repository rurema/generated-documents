# CGI::HtmlExtension#radio_button

### def radio_button(name = "", value = nil, checked = nil) -> String

タイプが radio である input 要素を生成します。

- **param** `name` -- name 属性の値を指定します。

- **param** `value` -- value 属性の値を指定します。

- **param** `checked` -- 真ならば checked 属性を設定します。

```ruby title="例"
radio_button("name", "value")
  # <INPUT TYPE="radio" NAME="name" VALUE="value">
 
radio_button("name", "value", true)
  # <INPUT TYPE="radio" NAME="name" VALUE="value" CHECKED>
```

### def radio_button(attributes) -> String

タイプが radio である input 要素を生成します。

- **param** `attributes` -- 属性をハッシュで指定します。

```ruby title="例"
radio_button({ "NAME" => "name", "VALUE" => "value", "ID" => "foo" })
  # <INPUT TYPE="radio" NAME="name" VALUE="value" ID="foo">
```
