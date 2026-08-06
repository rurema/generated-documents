# REXML::StreamListener#tag_end

### def tag_end(name) -> ()

終了タグをパースしたときに呼び出されるコールバックメソッドです。

- **param** `name` -- タグ名が文字列で渡されます

### 例

```text
</tag>
```

という終了タグに対し、

```text
name: "tag"
```

という引数が渡されます。
