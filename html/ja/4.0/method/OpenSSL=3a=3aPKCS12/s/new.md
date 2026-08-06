# OpenSSL::PKCS12.new

### def OpenSSL::PKCS12.new(obj=nil, pass=nil) -> OpenSSL::PKCS12

文字列もしくは [IO](../../../class/IO.md) オブジェクトから PKCS#12 オブジェクトを生成します。

データは通常パスフレーズで暗号化されているため、pass でそのパスワードを渡します。

- **param** `obj` -- PKCS#12データを読み込むオブジェクト(文字列もしくは IO)
- **param** `pass` -- パスフレーズ文字列
- **raise** `OpenSSL::PKCS12::PKCS12Error` -- データの読み込みに失敗した場合に発生します
