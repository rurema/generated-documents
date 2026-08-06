# OpenSSL::PKey::EC#public_key

### def public_key -> OpenSSL::PKey::EC::Point|nil

公開鍵となる楕円曲線上の点を表すオブジェクトを返します。

鍵が設定されていない場合は nil を返します。

- **raise** `OpenSSL::PKey::ECError` -- 公開鍵の取得時にエラーが生じた場合に発生します
- **SEE** [OpenSSL::PKey::EC#public_key=](../../../method/OpenSSL=3a=3aPKey=3a=3aEC/i/public_key=3d.md)
