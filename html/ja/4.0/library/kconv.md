# library kconv

日本語文字コードの変換を手軽に行うためのライブラリです。

kconv を require すると [String](../class/String.md) クラスに変換用のメソッドが定義されます。
[Kconv](../class/Kconv.md) にも同等のメソッドが定義されます。 [Kconv](../class/Kconv.md) にはエンコーディングを表す定数も定義されています。

1.9.1 以降では、Ruby の m17n 機能を用いてエンコーディングの変換を行うことができます。1.8 との互換性が問題でないのならば、
m17n 機能を使うほうがよいでしょう。MIMEのデコード等面倒な問題を避けることができます。

### 使用例

```ruby
require 'kconv'
newstring = Kconv.kconv(string, Kconv::JIS, Kconv::AUTO)
newstring = Kconv.tojis(string)
newstring = Kconv.toeuc(string)
newstring = Kconv.tosjis(string)
guessed_code = Kconv.guess(string)
```

または

```ruby
require 'kconv'
newstring = string.kconv(Kconv::JIS, Kconv::AUTO)
newstring = string.tojis
newstring = string.toeuc
newstring = string.tosjis
```
