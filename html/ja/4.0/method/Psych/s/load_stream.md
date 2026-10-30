# Psych.load_stream

### def Psych.load_stream(yaml, filename: nil, fallback: [], **kwargs) -> [object]
### def Psych.load_stream(yaml, filename: nil, fallback: [], **kwargs){|obj| ... } -> ()

複数の YAML ドキュメントを含むデータを
Ruby のオブジェクトに変換します。

ブロックなしの場合はオブジェクトの配列を返します。

```ruby title="例"
require 'psych'

p Psych.load_stream("--- foo\n...\n--- bar\n...") # => ['foo', 'bar']
```

ブロックありの場合は各オブジェクトを引数としてそのブロックを呼び出します。

```ruby title="例"
require 'psych'

list = []
Psych.load_stream("--- foo\n...\n--- bar\n...") do |ruby|
  list << ruby
end
p list # => ['foo', 'bar']
```

ブロックなしの場合に `yaml` がドキュメントを 1 つも含まないときは、`fallback` を返します。

```ruby title="fallback の例"
require 'psych'

p Psych.load_stream("", fallback: [:none]) # => [:none]
```

`filename` はパース中に発生した例外のメッセージに用います。

その他のキーワード引数 `kwargs` は、各ドキュメントを変換する [Psych::Nodes::Node#to_ruby](../../../method/Psych=3a=3aNodes=3a=3aNode/i/to_ruby.md) にそのまま渡します。

- **param** `yaml` -- YAML ドキュメント(文字列 or [IO](../../../class/IO.md) オブジェクト)
- **param** `filename` -- [Psych::SyntaxError](../../../class/Psych=3a=3aSyntaxError.md) 発生時にファイル名として表示する文字列。
- **param** `fallback` -- ブロックなしの場合に、`yaml` がドキュメントを 1 つも含まないときの返り値を指定します。デフォルトは `[]` です。
- **param** `kwargs` -- [Psych::Nodes::Node#to_ruby](../../../method/Psych=3a=3aNodes=3a=3aNode/i/to_ruby.md) に渡すキーワード引数(`symbolize_names` や `freeze` など)を指定します。
- **raise** `Psych::SyntaxError` -- YAMLドキュメントに文法エラーが発見されたときに発生します
