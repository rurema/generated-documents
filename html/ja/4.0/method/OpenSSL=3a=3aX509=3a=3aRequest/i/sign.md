# OpenSSL::X509::Request#sign

### def sign(key, digest) -> self

証明書署名要求に秘密鍵で署名をします。

通常、証明書署名要求は申請者の秘密鍵で署名されます。

- **param** `key` -- 秘密鍵([OpenSSL::PKey::PKey](../../../class/OpenSSL=3a=3aPKey=3a=3aPKey.md) のサブクラスのオブジェクト)
- **param** `digest` -- ハッシュ関数を表す文字列("sha1" など)
- **raise** `OpenSSL::X509::RequestError` -- 署名に失敗した場合に発生します
- **SEE** [OpenSSL::X509::Request#verify](../../../method/OpenSSL=3a=3aX509=3a=3aRequest/i/verify.md)
