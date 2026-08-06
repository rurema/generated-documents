# FrozenError#receiver

### def receiver -> object

self が発生した時のレシーバオブジェクトを返します。

- **raise** `ArgumentError` -- レシーバが設定されていない時に発生します。

```ruby
begin
  [1, 2, 3].freeze << 4
rescue FrozenError => err
  p err.receiver  # => [1, 2, 3]
end
```
