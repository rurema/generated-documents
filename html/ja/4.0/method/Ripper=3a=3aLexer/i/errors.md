# Ripper::Lexer#errors

### def errors -> [Ripper::Lexer::Elem] | nil
{: since="2.7.0"}

直前に実行した解析([Ripper::Lexer#scan](../../../method/Ripper=3a=3aLexer/i/scan.md)・[Ripper::Lexer#lex](../../../method/Ripper=3a=3aLexer/i/lex.md)・[Ripper::Lexer#tokenize](../../../method/Ripper=3a=3aLexer/i/tokenize.md) など)で見つかった構文エラーの一覧を返します。エラーが見つからなかった場合は空の配列を返します。解析を一度も実行していない場合は `nil` を返します。

配列の要素は [Ripper::Lexer#scan](../../../method/Ripper=3a=3aLexer/i/scan.md) の要素と同じく、位置・イベント名・トークン文字列・状態に加えてエラーメッセージを保持するオブジェクトです。

- **SEE** [Ripper::Lexer#scan](../../../method/Ripper=3a=3aLexer/i/scan.md)
