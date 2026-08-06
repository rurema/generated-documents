# Readline.completer_word_break_characters

### def Readline.completer_word_break_characters -> String

ユーザの入力の補完を行う際、単語の区切りを示す複数の文字で構成された文字列を取得します。
[Readline.basic_word_break_characters](../../../method/Readline/s/basic_word_break_characters.md) との違いは、
GNU Readline の rl_complete_internal 関数で使用されることです。

- **raise** `NotImplementedError` -- サポートしていない環境で発生します。

- **SEE** [Readline.completer_word_break_characters=](../../../method/Readline/s/completer_word_break_characters=3d.md)
