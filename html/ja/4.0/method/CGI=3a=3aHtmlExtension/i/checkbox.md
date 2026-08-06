# CGI::HtmlExtension#checkbox

### def checkbox(name = "", value = nil, checked = nil) -> String

タイプが checkbox である input 要素を生成します。

- **param** `name` -- name 属性の値を指定します。

- **param** `value` -- value 属性の値を指定します。

- **param** `checked` -- checked 属性の値を指定します。

```ruby title="例"
p checkbox("name", "value", true)
# => "<INPUT CHECKED NAME=\"name\" TYPE=\"checkbox\" VALUE=\"value\">"
```

### def checkbox(attributes) -> String

タイプが checkbox である input 要素を生成します。

- **param** `attributes` -- 属性をハッシュで指定します。

```ruby title="例"
p checkbox("name" => "name", "value" => "value", "checked" => true)
# => "<INPUT checked name=\"name\" TYPE=\"checkbox\" value=\"value\">"
```
