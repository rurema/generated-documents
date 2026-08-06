# OpenSSL::SSL::SSLSocket#sysread

### def sysread(length, buf=nil) -> String

データをバッファを経由せずに暗号化通信路から読み込み、読み込んだデータを文字列で返します。

基本的にはこのメソッドは使わず、[OpenSSL::Buffering](../../../class/OpenSSL=3a=3aBuffering.md) のメソッドを使ってデータを読み込むべきです。

length で読み込むバイト数を指定します。

bufに文字列を指定するとその文字列のメモリ領域にデータを直接書き込み、その String オブジェクトを返します。

[IO#sysread](../../../method/IO/i/sysread.md) と同様です。

- **param** `length` -- 読み込むバイト数を指定します
- **param** `buf` -- データを書き込むバッファ
- **raise** `EOFError` -- 入力が終端に達した場合に発生します
- **raise** `OpenSSL::SSL::SSLError` -- 読み込みに失敗した場合に発生します
