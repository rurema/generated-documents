# UNIXServer#listen

### def listen(backlog) -> 0

[man:listen(2)] を実行します。
([Socket#listen](../../../method/Socket/i/listen.md)と同じ)

backlog は、クライアントからの接続要求を保留できる数です。

[man:listen(2)] が成功すれば 0 を返します。
失敗すれば 例外 [Errno::EXXX](../../../class/Errno=3a=3aEXXX.md) が発生します。

- **param** `backlog` -- バックログの最大数(接続要求を保留できる数)
