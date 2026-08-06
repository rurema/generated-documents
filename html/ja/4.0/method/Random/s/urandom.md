# Random.urandom

### def Random.urandom(size) -> String

プラットフォームの提供する機能を使って、文字列を返します。

- **param** `size` -- 結果の文字列のサイズをバイト数で指定します。

- **return** -- 返り値はバイナリ形式で、暗号的に安全な擬似乱数だと期待できます。
- **raise** `RuntimeError` -- プラットフォームの提供する機能の準備に失敗した場合に発生します。

2017年の時点で、Linuxのmanpage([man:random(7)])には「今日256ビット以上のセキュリティを約束できる暗号化プリミティブが入手可能だとは期待できません」と書いてあります。そのため、sizeとして32より大きい値を指定することには疑問の余地があります。

```ruby title="例"
p Random.urandom(8)  #=> "\x78\x41\xBA\xAF\x7D\xEA\xD8\xEA"
```
