# OpenSSL::SSL::SocketForwarder#wait_writable

### def wait_writable(timeout = nil) -> self | nil

ラップされているソケットが書き込み可能になるまでブロックします。

引数はそのまま [IO#wait_writable](../../../method/IO/i/wait_writable.md) に渡されます。返り値も同じです。

- **param** `timeout` -- タイムアウトまでの秒数を指定します
