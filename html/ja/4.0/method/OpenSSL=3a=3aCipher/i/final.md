# OpenSSL::Cipher#final

### def final -> String

暗号オブジェクト内部に残されたデータを暗号化/復号化し、文字列で返します。

パディング([OpenSSL::Cipher#padding=](../../../method/OpenSSL=3a=3aCipher/i/padding=3d.md))を有効にしている場合は、残されたデータにパディングを付加した上で暗号化します。
