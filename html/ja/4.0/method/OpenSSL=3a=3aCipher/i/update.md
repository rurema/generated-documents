# OpenSSL::Cipher#update

### def update(data) -> String

渡された文字列を暗号化もしくは復号化して文字列として返します。

どちらがなされるかは直前に [OpenSSL::Cipher#encrypt](../../../method/OpenSSL=3a=3aCipher/i/encrypt.md) もしくは
[OpenSSL::Cipher#decrypt](../../../method/OpenSSL=3a=3aCipher/i/decrypt.md) のいずれが呼びだされたかによって決まります。

ブロック暗号を利用する場合は、暗号化/復号化はブロックサイズで規定されたバイト数ごとに行われます。そのため余ったデータは暗号オブジェクト内部に保存され、次の文字列が渡されたときに使われます。

暗号化/復号化すべきデータを渡し終えた後は、
[OpenSSL::Cipher#final](../../../method/OpenSSL=3a=3aCipher/i/final.md)
を呼びだして暗号オブジェクト内部に残されたデータを暗号化/復号化する必要があります。

- **param** `data` -- 暗号化/復号化する文字列
