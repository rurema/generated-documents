# REXML::StreamListener#elementdecl

### def elementdecl(content) -> ()

DTDの要素型宣言をパースしたときに呼び出されるコールバックメソッドです。

- **param** `content` -- 要素型宣言が文字列として渡されます。

### 例

```text
<!ELEMENT root (a+)>
```

という属性型宣言に対しては

```text
content: "<!ELEMENT root (a+)"
```

という引数が渡されます。
