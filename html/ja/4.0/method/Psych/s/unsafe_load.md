# Psych.unsafe_load

### def Psych.unsafe_load(yaml, filename: nil, fallback: false, symbolize_names: false, freeze: false) -> object

YAML ドキュメント yaml を Ruby のデータ構造(オブジェクト)に変換します。

[Psych.load](../../../method/Psych/s/load.md) と異なりクラスの制限を行わず、任意の Ruby オブジェクトに変換します。
外部から与えられた信頼できない YAML ドキュメントの変換には使わないでください。信頼できないドキュメントには [Psych.safe_load](../../../method/Psych/s/safe_load.md) を使ってください。

入力に複数のドキュメントが含まれている場合は、先頭のものを変換して返します。

yaml が空の場合は fallback で指定した値(デフォルトは false)を返します。

filename はパース中に発生した例外のメッセージに用います。

キーワード引数 symbolize_names に true を指定した場合はハッシュのキーを [Symbol](../../../class/Symbol.md) に変換して返します。

キーワード引数 freeze に true を指定した場合は再帰的に [Object#freeze](../../../method/Object/i/freeze.md) したオブジェクトを返します。

- **param** `yaml` -- YAML ドキュメント(文字列 or IO オブジェクト)
- **param** `filename` -- [Psych::SyntaxError](../../../class/Psych=3a=3aSyntaxError.md) 発生時にファイル名として表示する文字列
- **param** `fallback` -- 引数 yaml に空の YAML を指定した場合の戻り値。デフォルトは false です
- **param** `symbolize_names` -- ハッシュのキーを [Symbol](../../../class/Symbol.md) に変換するかどうか
- **param** `freeze` -- true を指定すると再帰的に freeze されたオブジェクトを返します
- **raise** `Psych::SyntaxError` -- YAML ドキュメントに文法エラーが発見されたときに発生します
- **raise** `TypeError` -- yaml に nil を指定したときに発生します
- **SEE** [Psych.load](../../../method/Psych/s/load.md), [Psych.safe_load](../../../method/Psych/s/safe_load.md)

```ruby title="例"
require 'psych'

p Psych.unsafe_load("--- a")             # => 'a'
p Psych.unsafe_load("---\n - a\n - b")   # => ['a', 'b']
```
