# OpenSSL::SSL::Session.new

### def OpenSSL::SSL::Session.new(obj) -> OpenSSL::SSL::Session

新しいセッションオブジェクトを生成します。

引数に [OpenSSL::SSL::SSLSocket](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLSocket.md) が渡された場合は、それに結び付けられたセッションを表すオブジェクトを返します。
[OpenSSL::SSL::SSLSocket#session](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/session.md) と同じ動作をします。

引数が文字列の場合、 PEM 形式もしくは DER 形式で保存されたセッションデータであるとみなし、セッションオブジェクトを生成します。
引数が [IO](../../../class/IO.md) オブジェクトである場合は、データを読みだし
PEM 形式もしくは DER 形式とみなしてセッションオブジェクトを生成します。

- **param** `obj` -- セッションオブジェクトの生成元オブジェクト
- **raise** `OpenSSL::SSL::Session::SessionError` -- オブジェクトの生成に
       失敗した場合に発生します
