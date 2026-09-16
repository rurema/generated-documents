# Readline.line_buffer

### def Readline.line_buffer -> String
{: since="1.9.2"}

編集中の行全体を返します。

completion_proc の中で、補完要求の文脈を判断するのに便利です。

`Readline.line_buffer` の長さは、GNU Readline の rl_end と同じです。

- **raise** `NotImplementedError` -- サポートしていない環境で発生します。

- **SEE** [Readline.point](../../../method/Readline/s/point.md)
