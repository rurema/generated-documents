# KeyError#receiver

### def receiver -> object

KeyError の原因となったメソッド呼び出しのレシーバを返します。

- **raise** `ArgumentError` -- レシーバが設定されていない時に発生します。

```ruby title="例"
h = Hash.new
begin
  h.fetch('gumby'*20)
rescue KeyError => e
  p e.message             # => "key not found: \"gumbygumbygumbygumbygumbygumbygumbygumbygumbygumbygumbygumbyg..."
  p h.equal?(e.receiver)  # => true
end
```
