# REXML::StreamListener#tag_start

### def tag_start(name, attrs) -> ()

開始タグをパースしたときに呼び出されるコールバックメソッドです。

- **param** `name` -- タグ名が文字列で渡されます
- **param** `attrs` -- タグの属性が"属性名" => "属性値"という [Hash](../../../class/Hash.md) で渡されます

### 例

```text
<tag attr1="value1" attr2="value2">
```

という開始タグに対し、

```text
name: "tag"
attrs: {"attr1" => "value1", "attr2" => "value2"}
```

という引数が渡されます。
