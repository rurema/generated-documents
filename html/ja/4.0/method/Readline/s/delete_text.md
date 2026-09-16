# Readline.delete_text

### def Readline.delete_text(start, length) -> self
{: since="2.1.0"}
### def Readline.delete_text(range) -> self
{: since="2.1.0"}
### def Readline.delete_text -> self
{: since="2.1.0"}

現在の入力行のうち、指定した範囲のテキストを削除します。引数を省略した場合は、入力行全体を削除します。

- **param** `start` -- 削除する範囲の開始位置を整数で指定します。
- **param** `length` -- 削除する文字数を整数で指定します。
- **param** `range` -- 削除する範囲を [Range](../../../class/Range.md) オブジェクトで指定します。

- **raise** `NotImplementedError` -- サポートしていない環境で発生します。libedit(Edit Line)を使ったビルドでは、libedit の版によってはこのメソッドを利用できないため発生します。

- **SEE** GNU Readline ライブラリの rl_delete_text 関数
