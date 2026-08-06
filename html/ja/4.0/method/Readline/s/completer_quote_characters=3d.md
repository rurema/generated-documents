# Readline.completer_quote_characters=

### def Readline.completer_quote_characters=(string)

ユーザの入力の補完を行う際、スペースなどの単語の区切りをクオートするための複数の文字で構成される文字列 string を指定します。
指定した文字の間では、[Readline.completer_word_break_characters=](../../../method/Readline/s/completer_word_break_characters=3d.md)
で指定した文字列に含まれる文字も、普通の文字列として扱われます。

- **param** `string` -- 文字列を指定します。

- **raise** `NotImplementedError` -- サポートしていない環境で発生します。

- **SEE** [Readline.completer_quote_characters](../../../method/Readline/s/completer_quote_characters.md)
