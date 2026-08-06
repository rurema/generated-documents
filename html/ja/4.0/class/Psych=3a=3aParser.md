# class Psych::Parser < Object

YAML のパーサ。

このクラスは YAML ドキュメントをパースし、コンストラクタに渡されたハンドラにイベントを通知(呼び出し)します。
このイベントを使って YAML の AST を構築したり YAML ドキュメントを別のフォーマット変換したりします。
[Psych::Emitter](../class/Psych=3a=3aEmitter.md) を使うとパースしたドキュメントを元通りに出力することもできます。

[Psych::Parser](../class/Psych=3a=3aParser.md) が生成するイベントは [Psych::Handler](../class/Psych=3a=3aHandler.md) 
を見てください。

以下の例では YAML ドキュメント に含まれているスカラー値を表示します。

```ruby
# Handler for detecting scalar values
class ScalarHandler < Psych::Handler
  def scalar value, anchor, tag, plain, quoted, style
    puts value
  end
end

parser = Psych::Parser.new(ScalarHandler.new)
parser.parse(yaml_document)
```

次の例は [Psych::Emitter](../class/Psych=3a=3aEmitter.md) にパースの結果を戻しています。
STDIN からの入力をパース→YAMLフォーマットで STDERR に出力という流れになっています。

```ruby
parser = Psych::Parser.new(Psych::Emitter.new($stderr))
parser.parse($stdin)
```

[Psych::Parser](../class/Psych=3a=3aParser.md) と [Psych::TreeBuilder](../class/Psych=3a=3aTreeBuilder.md) を組み合わせると
YAML の AST を構築できます。

## Class Methods

- [new](../method/Psych=3a=3aParser/s/new.md)

## Instance Methods

- [handler](../method/Psych=3a=3aParser/i/handler.md)
- [handler=](../method/Psych=3a=3aParser/i/handler=3d.md)
- [mark](../method/Psych=3a=3aParser/i/mark.md)
- [parse](../method/Psych=3a=3aParser/i/parse.md)

## Constants

- [ANY](../method/Psych=3a=3aParser/c/ANY.md)
- [UTF16BE](../method/Psych=3a=3aParser/c/UTF16BE.md)
- [UTF16LE](../method/Psych=3a=3aParser/c/UTF16LE.md)
- [UTF8](../method/Psych=3a=3aParser/c/UTF8.md)
