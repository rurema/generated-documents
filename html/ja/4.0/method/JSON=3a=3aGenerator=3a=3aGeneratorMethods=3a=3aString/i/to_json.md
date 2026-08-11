# JSON::Generator::GeneratorMethods::String#to_json

### def to_json(state_or_hash = nil) -> String

自身から生成した JSON 形式の文字列を返します。

自身のエンコードは UTF-8 であるべきです。

state_or_hash で [JSON::State#ascii_only?](../../../method/JSON=3a=3aState/i/ascii_only=3f.md) を真に指定するなどして
ASCII 以外の文字がエスケープされる場合、そのコードポイントを 16 進数 4 桁で表した "\uXXXX" という形式になります。
基本多言語面(BMP)外の文字は、UTF-16 のサロゲートペアとして "\uXXXX\uXXXX" のように \u エスケープを 2 つ連ねて表されます。
返り値の [String](../../../class/String.md) のエンコーディングは常に UTF-8 です。

- **param** `state_or_hash` -- 生成する JSON 形式の文字列をカスタマイズするために [JSON::State](../../../class/JSON=3a=3aState.md) のインスタンスか、
                     [JSON::State.new](../../../method/JSON=3a=3aState/s/new.md) の引数と同じ [Hash](../../../class/Hash.md) を指定します。

```ruby title="例"
require "json"

puts "test".to_json                    # => "test"
puts '"'.to_json                       # => "\""
puts "\\".to_json                      # => "\\"
puts "𤘩宮城".to_json(ascii_only: true) # => "\ud851\ude29\u5bae\u57ce"
```
