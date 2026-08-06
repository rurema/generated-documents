# REXML::StreamListener#cdata

### def cdata(content) -> ()

CDATA セクションをパースしたときに呼び出されるコールバックメソッドです。

- **param** `content` -- CDATAセクションの内容の文字列が渡されます

### 例

```text
<![CDATA[ xyz ]]>
```

というCDATAセクションに対しては

```text
content: " xyz "
```

という引数が渡されます。
