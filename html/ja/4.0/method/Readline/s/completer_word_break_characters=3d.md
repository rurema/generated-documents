# Readline.completer_word_break_characters=

### def Readline.completer_word_break_characters=(string)

ユーザの入力の補完を行う際、単語の区切りを示す複数の文字で構成される文字列 string を指定します。
[Readline.basic_word_break_characters=](../../../method/Readline/s/basic_word_break_characters=3d.md) との違いは、
GNU Readline の rl_complete_internal 関数で使用されることです。

GNU Readline のデフォルトの値は、
[Readline.basic_word_break_characters](../../../method/Readline/s/basic_word_break_characters.md) と同じです。

- **param** `string` -- 文字列を指定します。

- **raise** `NotImplementedError` -- サポートしていない環境で発生します。

- **SEE** [Readline.completer_word_break_characters](../../../method/Readline/s/completer_word_break_characters.md)
