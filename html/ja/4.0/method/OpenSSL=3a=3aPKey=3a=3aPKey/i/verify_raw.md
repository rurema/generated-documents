# OpenSSL::PKey::PKey#verify_raw

### def verify_raw(digest, signature, data) -> bool
### def verify_raw(digest, signature, data, options) -> bool

公開鍵の部分を使って、signature が data の署名として正しいかどうかを検証します。[OpenSSL::PKey::PKey#verify](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/verify.md) と異なり、data はこのメソッドの中ではハッシュ化されません。

署名の生成には [OpenSSL::PKey::PKey#sign_raw](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/sign_raw.md) を使います。

検証に成功した場合は true を、失敗した場合は false を返します。呼び出し側で返り値を確認する必要があります。

- **param** `digest` -- [OpenSSL::PKey::PKey#sign_raw](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/sign_raw.md) を参照してください
- **param** `signature` -- 検証する署名の文字列
- **param** `data` -- 検証対象のデータの文字列
- **param** `options` -- [OpenSSL::PKey::PKey#sign_raw](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/sign_raw.md) を参照してください
- **return** -- 検証に成功すれば true、失敗すれば false
- **SEE** [OpenSSL::PKey::PKey#sign_raw](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/sign_raw.md)
