# Ripper::Lexer#scan

### def scan -> [Ripper::Lexer::Elem]
{: since="2.7.0"}

自身の持つ Ruby プログラムを解析し、トークンの一覧を返します。[Ripper::Lexer#lex](../../../method/Ripper=3a=3aLexer/i/lex.md) や [Ripper::Lexer#tokenize](../../../method/Ripper=3a=3aLexer/i/tokenize.md) と異なり、[Ripper::Lexer#errors](../../../method/Ripper=3a=3aLexer/i/errors.md) で得られる構文エラーの要素も結果に含め、出現位置順に並べて返します。

配列の要素は位置・イベント名・トークン文字列・状態を保持するオブジェクトで、構文エラーの要素はさらにエラーメッセージを保持します。

- **SEE** [Ripper::Lexer#errors](../../../method/Ripper=3a=3aLexer/i/errors.md), [Ripper::Lexer#lex](../../../method/Ripper=3a=3aLexer/i/lex.md)
