# Psych.safe_load_stream

### def Psych.safe_load_stream(yaml, filename: nil, permitted_classes: [], aliases: false) -> [object]
### def Psych.safe_load_stream(yaml, filename: nil, permitted_classes: [], aliases: false){|obj| ... } -> nil

複数の YAML ドキュメントを含むデータを、[Psych.safe_load](../../../method/Psych/s/safe_load.md) と同様に安全に Ruby のオブジェクトに変換します。

ブロックなしの場合は変換したオブジェクトの配列を返します。

ブロックありの場合は変換した各オブジェクトを引数としてそのブロックを呼び出し、nil を返します。

permitted_classes、aliases の意味は [Psych.safe_load](../../../method/Psych/s/safe_load.md) と同じです。

- **param** `yaml` -- YAML ドキュメント(文字列 or IO オブジェクト)
- **param** `filename` -- [Psych::SyntaxError](../../../class/Psych=3a=3aSyntaxError.md) 発生時にファイル名として表示する文字列
- **param** `permitted_classes` -- 追加で読み込みを許可するクラスの配列
- **param** `aliases` -- エイリアスの読み込みを許可するかどうか
- **raise** `Psych::DisallowedClass` -- yaml に permitted_classes で許可されていないクラスが含まれていたときに発生します
- **raise** `Psych::BadAlias` -- yaml がエイリアスを含み、かつ aliases が false のときに発生します
- **SEE** [Psych.safe_load](../../../method/Psych/s/safe_load.md), [Psych.load_stream](../../../method/Psych/s/load_stream.md)

```ruby title="例"
require 'psych'

p Psych.safe_load_stream("--- foo\n...\n--- bar\n...") # => ['foo', 'bar']

list = []
Psych.safe_load_stream("--- foo\n...\n--- bar\n...") do |ruby|
  list << ruby
end
p list # => ['foo', 'bar']
```
