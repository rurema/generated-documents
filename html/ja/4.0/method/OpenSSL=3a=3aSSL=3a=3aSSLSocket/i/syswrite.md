# OpenSSL::SSL::SSLSocket#syswrite

### def syswrite(string) -> Integer

データをバッファを経由せずに暗号化通信路に書き込みます。

書き込んだバイト数を整数で返します。

基本的にはこのメソッドは使わず、[OpenSSL::Buffering](../../../class/OpenSSL=3a=3aBuffering.md) のメソッドを使ってデータを書き込むべきです。

[IO#syswrite](../../../method/IO/i/syswrite.md) と同様です。

- **param** `string` -- 書き込むデータ文字列
- **raise** `OpenSSL::SSL::SSLError` -- 書き込みに失敗した場合に発生します
