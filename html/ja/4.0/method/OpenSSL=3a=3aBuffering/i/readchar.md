# OpenSSL::Buffering#readchar

### def readchar -> String

バッファから1文字読み込み、それ返します。

読み込みが終端に到達している場合は例外 EOFError を返します。

[IO#readchar](../../../method/IO/i/readchar.md) と同様です。

- **raise** `EOFError` -- 読み込みが終端に到達した場合に発生します。
