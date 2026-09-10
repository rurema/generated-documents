# OpenSSL::Buffering#readbyte

### def readbyte -> Integer

ストリームから1バイトを読み込み、整数として返します。

[IO#readbyte](../../../method/IO/i/readbyte.md) と同様です。

- **raise** `EOFError` -- 既に読み込みが終端に達している場合に発生します
- **SEE** [OpenSSL::Buffering#getbyte](../../../method/OpenSSL=3a=3aBuffering/i/getbyte.md)
