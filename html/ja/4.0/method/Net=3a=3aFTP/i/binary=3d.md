# Net::FTP#binary=

### def binary=(bool)

[Net::FTP#put](../../../method/Net=3a=3aFTP/i/put.md), [Net::FTP#get](../../../method/Net=3a=3aFTP/i/get.md) による転送をバイナリモード(IMAGE)で転送するかどうかを指定します。

デフォルトの値は true です。

偽の場合、テキストモード(ASCII)が仮定されます。

EBCDIC や LOCAL など他の表現タイプはサポートされていません。

- **param** `bool` -- 真ならばバイナリモードを on にします。
- **SEE** [Net::FTP#binary](../../../method/Net=3a=3aFTP/i/binary.md)
