# KeyError#key

### def key -> object

KeyError の原因となったメソッド呼び出しのキーを返します。

- **raise** `ArgumentError` -- キーが設定されていない時に発生します。

```ruby title="例"
h = Hash.new
begin
  h.fetch('gumby'*20)
rescue KeyError => e
  p e.message            # => "key not found: \"gumbygumbygumbygumbygumbygumbygumbygumbygumbygumbygumbygumbyg..."
  p 'gumby'*20 == e.key  # => true
end
```
