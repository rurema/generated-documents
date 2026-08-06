# OpenSSL::SSL::SSLServer#listen

### def listen(backlog=5) -> 0

ラップしている [TCPServer](../../../class/TCPServer.md) の [TCPServer#listen](../../../method/TCPServer/i/listen.md) 
を呼びだします。

通常は TCPServer の初期化時に listen が呼びだされるため呼ぶ必要はないはずです。

- **param** `backlog` -- クライアントからの接続要求を保留できる数
- **raise** `Errno::EXXX` -- [man:listen(2)] が失敗すれば 例外 [Errno::EXXX](../../../class/Errno=3a=3aEXXX.md) が発生します。
