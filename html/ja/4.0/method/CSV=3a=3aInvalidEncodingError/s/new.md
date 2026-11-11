# CSV::InvalidEncodingError.new

### def CSV::InvalidEncodingError.new(encoding, line_number) -> CSV::InvalidEncodingError

例外オブジェクトを生成して返します。

例外のメッセージは `"Invalid byte sequence in #{encoding} in line #{line_number}."` になります。`encoding` は [CSV::InvalidEncodingError#encoding](../../../method/CSV=3a=3aInvalidEncodingError/i/encoding.md) の戻り値に、`line_number` は [CSV::MalformedCSVError#line_number](../../../method/CSV=3a=3aMalformedCSVError/i/line_number.md) の戻り値になります。

- **param** `encoding` -- 入力のエンコーディングを表す [Encoding](../../../class/Encoding.md) オブジェクトを指定します。
- **param** `line_number` -- 不正なバイト列が見つかった行の行番号を指定します。

```ruby title="例"
require "csv"

e = CSV::InvalidEncodingError.new(Encoding::UTF_8, 2)
p e.message     # => "Invalid byte sequence in UTF-8 in line 2."
p e.encoding    # => #<Encoding:UTF-8>
p e.line_number # => 2
```
