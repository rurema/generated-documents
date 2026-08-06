# Ripper::Lexer#parse

### def parse -> [[Integer, Integer], Symbol, String, Ripper::Lexer::State]

自身の持つ Ruby プログラムをトークンに分割し、そのリストを返します。ただし [Ripper::Lexer#lex](../../../method/Ripper=3a=3aLexer/i/lex.md) と違い、結果をソートしません。

ライブラリ内部で使用します。
