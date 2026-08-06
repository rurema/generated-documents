# OpenSSL::SSL::SocketForwarder#fcntl

### def fcntl(cmd, arg=0) -> Integer

ラップされているソケットに対してシステムコール fcntl を実行します。

[IO#fcntl](../../../method/IO/i/fcntl.md) と同様です。

- **param** `cmd` -- IO に対するコマンドを、添付ライブラリ [fcntl](../../../library/fcntl.md) が提供している定数で指定します。
- **param** `arg` -- cmd に対する引数を整数、文字列、booleanのいずれかで指定します。
- **raise** `Errno::EXXX` -- fcntl の実行に失敗した場合に発生します。
- **raise** `IOError` -- 既に close されている場合に発生します。
