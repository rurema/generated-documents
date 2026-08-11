# Readline::HISTORY.each

### def Readline::HISTORY.each -> Enumerator
### def Readline::HISTORY.each {|string| ... }

ヒストリの内容に対してブロックを評価します。
ブロックパラメータにはヒストリの最初から最後までの内容を順番に渡します。

```ruby title="例: ヒストリの内容を最初から順番に出力する"
require "readline"
  
Readline::HISTORY.push("foo", "bar", "baz")
Readline::HISTORY.each do |s|
  p s # => "foo", "bar", "baz"
end
```

例: [Enumerator](../../../class/Enumerator.md) オブジェクトを返す場合。

```ruby
require "readline"
  
Readline::HISTORY.push("foo", "bar", "baz")
e = Readline::HISTORY.each
e.each do |s|
  p s # => "foo", "bar", "baz"
end
```
