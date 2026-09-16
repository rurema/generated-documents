# Readline.vi_editing_mode?

### def Readline.vi_editing_mode? -> bool
{: since="1.9.1"}

vi モードが有効であれば `true` を返します。そうでなければ `false` を返します。

- **raise** `NotImplementedError` -- サポートしていない環境で発生します。libedit(Edit Line)を使ったビルドではこのメソッドを利用できないため発生します。

- **SEE** [Readline.vi_editing_mode](../../../method/Readline/s/vi_editing_mode.md)
