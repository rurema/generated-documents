# class Psych::Emitter < Psych::Handler

[Psych::Parser](../class/Psych=3a=3aParser.md) でパースし、生じたイベントから
YAML ドキュメントを再構築するようなハンドラです。

以下の例では STDIN から YAML ドキュメントを入力し、再構築した YAML ドキュメントを STDERR に出力します。

```ruby
parser = Psych::Parser.new(Psych::Emitter.new($stderr))
parser.parse($stdin)
```

また、以下のようにイベントを手動で発生させることで
YAML ドキュメントを構築させることもできます。
各メソッドの意味については [Psych::Handler](../class/Psych=3a=3aHandler.md) を参照してください。

```ruby
require 'psych'
require 'stringio'
  
output = StringIO.new
emitter = Psych::Emitter.new(output)
  
emitter.start_stream(Psych::Parser::UTF8)
emitter.start_document([1, 1], [], false)
emitter.start_mapping(nil, nil, false, Psych::Nodes::Mapping::BLOCK)
emitter.scalar("a", nil, nil, true, false, Psych::Nodes::Scalar::PLAIN)
emitter.scalar("12", nil, nil, true, false, Psych::Nodes::Scalar::PLAIN)
emitter.scalar("xyz", nil, nil, true, false, Psych::Nodes::Scalar::PLAIN)
emitter.scalar("23", nil, nil, false, true, Psych::Nodes::Scalar::SINGLE_QUOTED)
emitter.end_mapping
emitter.end_document(false)
emitter.end_stream
  
puts output.string
# =>
# %YAML 1.1
# ---
# a: 12
# xyz: '23'
# ...
```

## Class Methods

- [new](../method/Psych=3a=3aEmitter/s/new.md)

## Instance Methods

- [canonical](../method/Psych=3a=3aEmitter/i/canonical.md)
- [canonical=](../method/Psych=3a=3aEmitter/i/canonical=3d.md)
- [indentation](../method/Psych=3a=3aEmitter/i/indentation.md)
- [indentation=](../method/Psych=3a=3aEmitter/i/indentation=3d.md)
- [line_width](../method/Psych=3a=3aEmitter/i/line_width.md)
- [line_width=](../method/Psych=3a=3aEmitter/i/line_width=3d.md)
