# Encoding#dummy?

### def dummy? -> bool

自身がダミーエンコーディングである場合に true を返します。
そうでない場合に false を返します。

ダミーエンコーディングとは Ruby が名前を知っているものの実質的には対応していないエンコーディングのことです。例えば、ダミーエンコーディングで符号化された文字列の場合、 [String#length](../../../method/String/i/length.md) はマルチバイト文字を考慮せずにバイト列の長さを返します。

ダミーエンコーディングも [IO](../../../class/IO.md) の外部エンコーディングに指定できます。また
Ruby はサポートしていないが拡張ライブラリがサポートしているエンコーディングを扱う場合にも用います。

```ruby title="例"
p Encoding::ISO_2022_JP.dummy?     # => true
p Encoding::UTF_8.dummy?           # => false
```
