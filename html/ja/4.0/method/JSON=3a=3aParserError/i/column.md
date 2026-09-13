# JSON::ParserError#column

### def line -> Integer | nil
### def column -> Integer | nil

パースエラーが発生した位置の行番号と桁番号を返します。


```ruby title="例"
require "json"

begin
  JSON.parse(%Q({"a": invalid}))
rescue JSON::ParserError => e
  p e.line    # => 1
  p e.column  # => 7
  p e.message # => "unexpected character: 'invalid}' at line 1 column 7"
end
```
