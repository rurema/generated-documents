# Psych::Visitors::YAMLTree.new

### def Psych::Visitors::YAMLTree.new(options = {}, emitter = Psych::TreeBuilder.new, ss = Psych::ScalarScanner.new) -> Psych::Visitors::YAMLTree

YAMLTree オブジェクトを生成します。

options には構築される YAML AST に設定されるオプション設定を指定します。
[Psych.dump](../../../method/Psych/s/dump.md) と同じオプションが指定できます。

emitter には AST の構築に使われる [Psych::TreeBuilder](../../../class/Psych=3a=3aTreeBuilder.md) オブジェクトを渡します。

ss は Ruby の [String](../../../class/String.md) が YAML document 上で quote が必要かどうかを判定するための [Psych::ScalarScanner](../../../class/Psych=3a=3aScalarScanner.md) オブジェクトを渡します。

emitter, ss は通常デフォルトのものから変える必要はないでしょう。

- **param** `options` -- オプション
- **param** `emitter` -- AST の構築に使う [Psych::TreeBuilder](../../../class/Psych=3a=3aTreeBuilder.md) オブジェクト
- **param** `ss` -- 文字列に quite が必要かどうかを判定するための [Psych::ScalarScanner](../../../class/Psych=3a=3aScalarScanner.md) オブジェクト
