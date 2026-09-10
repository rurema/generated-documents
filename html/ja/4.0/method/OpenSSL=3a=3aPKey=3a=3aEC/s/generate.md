# OpenSSL::PKey::EC.generate

### def OpenSSL::PKey::EC.generate(ec_group) -> OpenSSL::PKey::EC
### def OpenSSL::PKey::EC.generate(string) -> OpenSSL::PKey::EC

新しいランダムな秘密鍵と公開鍵を持つ EC オブジェクトを生成します。

- **param** `ec_group` -- 鍵パラメータとなる群を表す [OpenSSL::PKey::EC::Group](../../../class/OpenSSL=3a=3aPKey=3a=3aEC=3a=3aGroup.md) オブジェクト
- **param** `string` -- 曲線の名前を表す文字列
- **SEE** [OpenSSL::PKey::EC.new](../../../method/OpenSSL=3a=3aPKey=3a=3aEC/s/new.md)
