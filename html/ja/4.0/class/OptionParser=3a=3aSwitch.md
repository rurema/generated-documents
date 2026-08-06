# class OptionParser::Switch < Object

[OptionParser#on](../method/OptionParser/i/on.md) などで登録される、個々のオプション定義
(スイッチ)を表す内部クラスです。[OptionParser#make_switch](../method/OptionParser/i/make_switch.md) が
opts を解析して生成します。

オプションの引数の形態に応じて、以下の 4 つのサブクラスがあります。

- `OptionParser::Switch::NoArgument` -- 引数をとらないスイッチ
- `OptionParser::Switch::RequiredArgument` -- 引数が必須のスイッチ
- `OptionParser::Switch::OptionalArgument` -- 引数が省略可能なスイッチ
- `OptionParser::Switch::PlacedArgument` -- 引数を置けるスイッチ

通常、ユーザーがこのクラスのオブジェクトを直接扱うことはありません。

- **SEE** [OptionParser#make_switch](../method/OptionParser/i/make_switch.md), [OptionParser#on](../method/OptionParser/i/on.md)
