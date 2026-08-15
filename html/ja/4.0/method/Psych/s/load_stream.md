# Psych.load_stream

### def Psych.load_stream(yaml, filename=nil) -> [object]
### def Psych.load_stream(yaml, filename=nil){|obj| ... } -> ()

複数の YAML ドキュメントを含むデータを
Ruby のオブジェクトに変換します。

ブロックなしの場合はオブジェクトの配列を返します。

```ruby title="例"
require 'psych'

p Psych.load_stream("--- foo\n...\n--- bar\n...") # => ['foo', 'bar']
```

ブロックありの場合は各オブジェクト引数としてそのブロックを呼び出します。

```ruby title="例"
require 'psych'

list = []
Psych.load_stream("--- foo\n...\n--- bar\n...") do |ruby|
  list << ruby
end
p list # => ['foo', 'bar']
```

filename はパース中に発生した例外のメッセージに用います。

- **param** `yaml` -- YAML ドキュメント(文字列 or IO オブジェクト)
- **param** `filename` -- [Psych::SyntaxError](../../../class/Psych=3a=3aSyntaxError.md) 発生時にファイル名として表示する文字列。
- **raise** `Psych::SyntaxError` -- YAMLドキュメントに文法エラーが発見されたときに発生します
