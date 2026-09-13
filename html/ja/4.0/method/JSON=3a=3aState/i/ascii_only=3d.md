# JSON::State#ascii_only=

### def ascii_only? -> bool
### def ascii_only=(enable)

ASCII 文字列のみを用いて JSON 形式の文字列を生成する場合に `ascii_only?` は真を返します。
そうでない場合に偽を返します。

`ascii_only=` は、ASCII 文字列のみを用いて JSON 形式の文字列を生成するかどうかを設定します。

- **param** `enable` -- 真を指定すると ASCII 文字列のみを生成するようになります。
           偽を指定すると、ASCII 以外の文字列もそのまま生成するようになります。

```ruby title="例"
require "json"

json_state = JSON::State.new(ascii_only: true)
p JSON.generate(["日本語"], json_state) # => "[\"\\u65e5\\u672c\\u8a9e\"]"
json_state.ascii_only = false
p JSON.generate(["日本語"], json_state) # => "[\"日本語\"]"
```
