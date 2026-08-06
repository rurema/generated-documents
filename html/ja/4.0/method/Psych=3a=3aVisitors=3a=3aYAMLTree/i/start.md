# Psych::Visitors::YAMLTree#start

### def start(encoding = Nodes::Stream::UTF8) -> Psych::Nodes::Stream

Ruby オブジェクトから YAML AST への変換のための準備をします。

[Psych::Visitors::YAMLTree#push](../../../method/Psych=3a=3aVisitors=3a=3aYAMLTree/i/push.md) が呼び出されたとき、まだこのメソッドが呼び出されていなければ push メソッドがこのメソッドを呼び出し、変換の準備をします。

encoding には以下のいずれかを指定できます。
  - [Psych::Nodes::Stream::UTF8](../../../method/Psych=3a=3aNodes=3a=3aStream/c/UTF8.md)
  - [Psych::Nodes::Stream::UTF16BE](../../../method/Psych=3a=3aNodes=3a=3aStream/c/UTF16BE.md)
  - [Psych::Nodes::Stream::UTF16LE](../../../method/Psych=3a=3aNodes=3a=3aStream/c/UTF16LE.md)

- **param** `encoding` -- YAML AST に設定するエンコーディング
