# Readline.completion_quote_character

### def Readline.completion_quote_character -> String | nil
{: since="2.5.0"}

補完処理中(completion_proc の中など)に呼び出すと、補完対象の引数をクオートするために使われた文字を返します。引数がクオートされていない場合は `nil` を返します。

補完処理中以外に呼び出した場合は、常に `nil` を返します。

なお、[Readline.completer_quote_characters=](../../../method/Readline/s/completer_quote_characters=3d.md) が設定されていない場合、このメソッドは常に `nil` を返します。

- **raise** `NotImplementedError` -- サポートしていない環境で発生します。libedit(Edit Line)を使ったビルドではこのメソッドを利用できないため発生します。

- **SEE** [Readline.completer_quote_characters=](../../../method/Readline/s/completer_quote_characters=3d.md)
