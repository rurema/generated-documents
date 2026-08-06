# Regexp#named_captures

### def named_captures -> { String => [Integer] }

正規表現に含まれる名前付きキャプチャ(named capture)の情報を
[Hash](../../../class/Hash.md) で返します。

Hash のキーは名前付きキャプチャの名前で、値はその名前に関連付けられたキャプチャの index のリストを返します。

```ruby title="例"
p /(?<foo>.)(?<bar>.)/.named_captures
# => {"foo"=>[1], "bar"=>[2]}

p /(?<foo>.)(?<foo>.)/.named_captures
# => {"foo"=>[1, 2]}

# 名前付きキャプチャを持たないときは空の Hash を返します。
p /(.)(.)/.named_captures
# => {}
```
