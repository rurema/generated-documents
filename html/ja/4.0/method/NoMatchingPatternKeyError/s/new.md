# NoMatchingPatternKeyError.new

### def NoMatchingPatternKeyError.new(message = nil, matchee: nil, key: nil) -> NoMatchingPatternKeyError

例外オブジェクトを生成して返します。

- **param** `message` -- エラーメッセージを表す文字列です。

- **param** `matchee` -- パターンマッチの対象となったオブジェクトです。
             [NoMatchingPatternKeyError#matchee](../../../method/NoMatchingPatternKeyError/i/matchee.md) で取り出せます。

- **param** `key` -- 見つからなかったキーです。
             [NoMatchingPatternKeyError#key](../../../method/NoMatchingPatternKeyError/i/key.md) で取り出せます。

```ruby
data = {name: "ken"}
e = NoMatchingPatternKeyError.new("key not found", matchee: data, key: :age)
p e.matchee.equal?(data) # => true
p e.key                  # => :age
```
