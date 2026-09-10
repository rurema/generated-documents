# OpenSSL::SSL::SocketForwarder#timeout=

### def timeout -> Numeric | nil
### def timeout=(numeric)

ラップされているソケットに設定されている入出力のタイムアウトを秒単位で取得・設定します。

[IO#timeout](../../../method/IO/i/timeout.md), [IO#timeout=](../../../method/IO/i/timeout=3d.md) と同様です。

- **param** `numeric` -- タイムアウトの秒数。nil を指定するとタイムアウトを解除します
