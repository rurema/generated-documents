# Psych::Handler#start_stream

### def start_stream(encoding) -> ()

YAML ストリームの始まりで呼び出されます。

encoding にはストリームのエンコーディング(以下のいずれか)が渡されます。
  - [Psych::Parser::UTF8](../../../method/Psych=3a=3aParser/c/UTF8.md)
  - [Psych::Parser::UTF16BE](../../../method/Psych=3a=3aParser/c/UTF16BE.md)
  - [Psych::Parser::UTF16LE](../../../method/Psych=3a=3aParser/c/UTF16LE.md)

このメソッドは YAML のストリームごとに呼び出されます。一つのストリームには複数のドキュメントが含まれている可能性があります。

必要に応じてこのメソッドを override してください。

- **param** `encoding` -- ストリームのエンコーディング(整数値)
