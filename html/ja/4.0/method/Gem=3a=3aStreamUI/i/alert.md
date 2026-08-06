# Gem::StreamUI#alert

### def alert(statement, question  = nil) -> String | nil

INFO レベルのアラートを表示します。

- **param** `statement` -- 表示する文字列を指定します。

- **param** `question` -- 必要であれば質問を指定します。

- **return** -- question を指定した場合は、それに対する回答を返します。
        question を指定しない場合は nil を返します。

- **SEE** [Gem::StreamUI#ask](../../../method/Gem=3a=3aStreamUI/i/ask.md)
