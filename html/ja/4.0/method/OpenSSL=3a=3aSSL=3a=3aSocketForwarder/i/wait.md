# OpenSSL::SSL::SocketForwarder#wait

### def wait(events, timeout = nil) -> Integer | nil
### def wait(timeout = nil) -> bool | self | nil
### def wait_readable(timeout = nil) -> bool | self | nil

ラップされているソケットが指定したイベント(省略時は読み込み可能)の状態になるまでブロックします。

引数はそのまま [IO#wait](../../../method/IO/i/wait.md) と [IO#wait_readable](../../../method/IO/i/wait_readable.md) に渡されます。返り値もそれらと同じです。

- **param** `events` -- 待つイベントを [IO#wait](../../../method/IO/i/wait.md) と同じ形式で指定します
- **param** `timeout` -- タイムアウトまでの秒数を指定します
