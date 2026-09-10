# OpenSSL::PKey::RSA#verify_pss

### def verify_pss(digest, signature, data, salt_length:, mgf1_hash:) -> bool

RSA-PSS を使って data の署名を検証します。

署名が正しい場合は true を、そうでない場合は false を返します。エラーが発生した場合は [OpenSSL::PKey::PKeyError](../../../class/OpenSSL=3a=3aPKey=3a=3aPKeyError.md) が発生します。

署名の生成については [OpenSSL::PKey::RSA#sign_pss](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/sign_pss.md) を参照してください。

- **param** `digest` -- 利用するメッセージダイジェストアルゴリズムの名前を表す文字列
- **param** `signature` -- 検証する署名の文字列
- **param** `data` -- 署名されたデータの文字列
- **param** `salt_length` -- ソルトの長さ(オクテット単位)です。特別な値として、ダイジェストの長さを意味する `:digest` と、署名をもとに長さを自動的に決定することを意味する `:auto` が指定できます
- **param** `mgf1_hash` -- MGF1 で使うハッシュアルゴリズム
- **return** -- 署名が正しい場合は true、そうでない場合は false
- **raise** `OpenSSL::PKey::PKeyError` -- エラーが発生した場合に発生します
- **SEE** [OpenSSL::PKey::RSA#sign_pss](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/sign_pss.md)
