# module RubyVM::AbstractSyntaxTree

Ruby のコードをパースして得られる抽象構文木を扱うモジュールです。

抽象構文木は[RubyVM::AbstractSyntaxTree::Node](../class/RubyVM=3a=3aAbstractSyntaxTree=3a=3aNode.md)クラスのインスタンスとして表されます。

このモジュールはMRIの抽象構文木の実装の詳細を表します。

このモジュールは実験的であり、安定したAPIではないため、予告なしに変更される可能性があります。
例えば、子要素の順序は保証されておらず、子要素の数は変更される可能性があります。
また子要素に名前でアクセスする方法は提供されていません。

もし安定したAPIやMRI以外の実装で抽象構文木を扱いたい場合、
parser gem (<https://github.com/whitequark/parser>)や
[Ripper](../class/Ripper.md)の使用を検討してください。
もし RubyVM::AbstractSyntaxTree のAPIを安定にしたい場合、[feature:14844] での議論に参加してください。

## Class Methods

- [node_id_for_backtrace_location](../method/RubyVM=3a=3aAbstractSyntaxTree/s/node_id_for_backtrace_location.md)
- [of](../method/RubyVM=3a=3aAbstractSyntaxTree/s/of.md)
- [parse](../method/RubyVM=3a=3aAbstractSyntaxTree/s/parse.md)
- [parse_file](../method/RubyVM=3a=3aAbstractSyntaxTree/s/parse_file.md)
