# OpenSSL::PKey::EC#public_key=

### def public_key=(pubkey)

公開鍵となる楕円曲線上の点を表すオブジェクトを設定します。

通常このメソッドで値を変更することはありません。
よく考えて必要な場合のみ利用してください。

- **param** `pubkey` -- 公開鍵となる [OpenSSL::PKey::EC::Point](../../../class/OpenSSL=3a=3aPKey=3a=3aEC=3a=3aPoint.md) オブジェクト
- **raise** `OpenSSL::PKey::ECError` -- 公開鍵の設定時にエラーが生じた場合に発生します
- **SEE** [OpenSSL::PKey::EC#public_key](../../../method/OpenSSL=3a=3aPKey=3a=3aEC/i/public_key.md)
